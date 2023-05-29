import 'package:askanything/presentation/widgets/ask_question_form.dart';
import 'package:askanything/presentation/widgets/update_profie_form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:file_picker/file_picker.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  _UpdateProfileScreenState createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  String? selectedImage;

  String filename = "";
  Uint8List? filebyte;
  FilePickerResult? pickeFile;
  void _chooseFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ['jpg', 'png'],
        type: FileType.custom);

    if (result != null) {
      PlatformFile file = result.files.first;
      setState(() {
        filename = file.name;
        filename = filename.substring(0, 20);
        filebyte = file.bytes;
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
          topLeft: Radius.circular(30.h),
          topRight: Radius.circular(30.h),
        ),
      ),
      builder: (BuildContext context) {
        return UpdateProfileForm();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   leading: Container(
      //     margin: EdgeInsets.all(6.h),
      //     decoration: BoxDecoration(
      //       border: Border.all(color: Colors.grey),
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.arrow_back_ios),
      //       color: Colors.black,
      //     ),
      //   ),
      //   title: const Text('Profile'),
      //   titleTextStyle: TextStyle(
      //     color: Colors.black, // Set the text color to black
      //     fontSize: 20, // Set the font size to 20
      //     fontWeight: FontWeight.bold, // Set the font weight to bold
      //   ),
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.all(6.h),
      //       child: ElevatedButton(
      //         onPressed: () {},
      //         child: const Text('Save'),
      //         style: ButtonStyle(
      //           backgroundColor: MaterialStateProperty.all(
      //             Color.fromRGBO(255, 115, 92, 1),
      //           ),
      //           shape: MaterialStateProperty.all(
      //             RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(1.0),
      //     child: Divider(
      //       color: Colors.black,
      //       height: 1.0,
      //     ),
      //   ),
      // ),
      body: ProfileForm(
        selectedImage: selectedImage,
        onImageSelected: _chooseFile,
        onChangePasswordPressed: () => _showUpdateProfileForm(context),
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  final String? selectedImage;
  final VoidCallback onImageSelected;
  final VoidCallback onChangePasswordPressed;

  const ProfileForm({
    Key? key,
    this.selectedImage,
    required this.onImageSelected,
    required this.onChangePasswordPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
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
                          width: 70.w,
                          height: 70.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16, // Set the font size to 16
                    fontWeight: FontWeight.bold, // Set the font weight to bold
                  ),
                ),
                SizedBox(height: 5.h),
                TextField(
                    // decoration: InputDecoration(
                    //   enabledBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Color.fromRGBO(255, 115, 92, 1),
                    //       width: 1.0,
                    //     ),
                    //   ),
                    //   focusedBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Color.fromRGBO(255, 115, 92, 1),
                    //       width: 1.0,
                    //     ),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16, // Set the font size to 16
                    fontWeight: FontWeight.bold, // Set the font weight to bold
                  ),
                ),
                SizedBox(height: 5.h),
                TextField(
                    // decoration: InputDecoration(
                    //   enabledBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Color.fromRGBO(255, 115, 92, 1),
                    //       width: 1.0,
                    //     ),
                    //   ),
                    //   focusedBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Color.fromRGBO(255, 115, 92, 1),
                    //       width: 1.0,
                    //     ),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: const Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 16, // Set the font size to 16
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
