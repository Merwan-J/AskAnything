import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/application/profile/bloc/profile_bloc.dart';
import 'package:askanything/application/profile/bloc/profile_event.dart';
import 'package:askanything/domain/profile/edit_profile_form.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/profile/profile_dto.dart';
import 'package:askanything/presentation/widgets/update_profie_form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  _UpdateProfileScreenState createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  String? selectedImage;

  String filename = "";
  FilePickerResult? pickeFile;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void _chooseFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      allowedExtensions: ['jpg', 'png'],
      type: FileType.custom,
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      setState(() {
        filename = file.name;
        filename = filename.substring(0, 20);
        // filebyte = file.bytes;
      });
    } else {
      // User canceled the picker
    }
  }

  void _showUpdateProfileForm(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return UpdateProfileForm();
      },
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    User? user = RepositoryProvider.of<AuthRepository>(context)
        .getAuthenticatedUserSync();
    print(user?.id);
    if (user != null) {
      nameController.text = user.name;
      emailController.text = user.email;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(6.h),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        title: const Text('Profile'),
        titleTextStyle: TextStyle(
          color: Colors.black, // Set the text color to black
          fontSize: 20, // Set the font size to 20
          fontWeight: FontWeight.bold, // Set the font weight to bold
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(6.h),
            child: ElevatedButton(
              onPressed: () {
                context.read<ProfileBloc>().add(
                      UpdateProfileEvent(
                        EditProfileForm(
                          name: nameController.text,
                          email: emailController.text,
                          image: "image",
                        ),
                      ),
                    );
                Navigator.pop(context);
              },
              child: const Text('Save'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(255, 115, 92, 1),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Colors.black,
            height: 1.0,
          ),
        ),
      ),
      body: ProfileForm(
        selectedImage: selectedImage,
        onImageSelected: _chooseFile,
        nameController: nameController,
        emailController: emailController,
        onChangePasswordPressed: () => _showUpdateProfileForm(context),
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  final String? selectedImage;
  final VoidCallback onImageSelected;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final VoidCallback onChangePasswordPressed;

  const ProfileForm({
    Key? key,
    this.selectedImage,
    required this.onImageSelected,
    required this.nameController,
    required this.emailController,
    required this.onChangePasswordPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: selectedImage != null
                      ? AssetImage(selectedImage!)
                      : AssetImage('assets/images/profile.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: onImageSelected,
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: TextButton(
                        onPressed: onImageSelected,
                        child: SvgPicture.asset(
                          "assets/svg/upload.svg",
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: nameController,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: emailController,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: onChangePasswordPressed,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
