import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:askanything/util/constants.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../application/question/question_post/bloc/question_post_bloc.dart';
import '../../domain/question/question_form.dart';

class AskQuestionForm extends StatefulWidget {
  const AskQuestionForm({super.key});

  @override
  State<AskQuestionForm> createState() => _AskQuestionFormState();
}

class _AskQuestionFormState extends State<AskQuestionForm> {
  bool isAnnonymous = false;

  String selectedTopic = "";

  String filename = "";
  FilePickerResult? pickeFile;
  Uint8List? filebyte;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  toggle() {
    setState(() {
      isAnnonymous = !isAnnonymous;
    });
  }

  chooseFile() async {
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

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      minChildSize: 0.3,
      // maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                  top: 7,
                  child: Container(
                    height: 5.h,
                    width: 60.h,
                    color: Colors.grey,
                  )),
              Container(
                padding: EdgeInsets.only(
                    top: 30.h,
                    right: 20.h,
                    left: 20.h,
                    // ),
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                // height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButtonFormField(
                        decoration: InputDecoration(hintText: "Select Topic"),
                        disabledHint: Text("Choose Topic"),
                        value: selectedTopic != "" ? selectedTopic : null,
                        items: _dropDownButtonList(),
                        onChanged: (value) {
                          setState(() {
                            selectedTopic = value;
                          });
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: "Enter title here"),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      // height: 300.h,
                      child: TextField(
                        maxLines: 6,
                        // expands: true,
                        // keyboardType: TextInputType.multiline,
                        controller: descriptionController,
                        decoration:
                            InputDecoration(hintText: "Enter description"),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          chooseFile();
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.cloud_upload_outlined,
                              color: CustomColor.primaryColor,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text("Upload Image")
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text("Anonymous"),
                        Switch(
                            activeTrackColor: Color.fromRGBO(226, 230, 234, 1),
                            // activeColor: Color.fromRGBO(255, 115, 92, 1),
                            activeColor: CustomColor.primaryColor,
                            value: isAnnonymous,
                            onChanged: (value) {
                              setState(() {
                                isAnnonymous = value;
                              });
                            })
                      ],
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {
                                context.pop();
                              },
                              child: Text("Cancel")),
                          SizedBox(
                            width: 10.h,
                          ),
                          BlocConsumer<QuestionPostBloc, QuestionPostState>(
                            listener: (context, state) {
                              print(state);
                              if (state is QuestionPostInitial) {
                                //snackbar
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Initial"),
                                  ),
                                );
                              }
                              if (state is QuestionPostSuccess) {
                                //remove snackbar

                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("success"),
                                  ),
                                );
                                //snackbar
                              }

                              if (state is QuestionPosting) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("posting"),
                                  ),
                                );
                                //snackbar
                              }

                              if (state is QuestionPostFailure) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("failed"),
                                  ),
                                );
                                //snackbar
                              }
                            },
                            builder: (context, state) {
                              return GestureDetector(
                                onTap: () {
                                  final questionForm = QuestionForm(
                                    title: titleController.text,
                                    description: descriptionController.text,
                                    topic: selectedTopic,
                                    anonymous: isAnnonymous,
                                  );
                                  BlocProvider.of<QuestionPostBloc>(context)
                                      .add(QuestionPostAdd(questionForm));
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  // color: Colors.blue,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 115, 92, 1),
                                      borderRadius:
                                          BorderRadius.circular(10.h)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.h),
                                  child: Text("Post",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),

                // color: Colors.red,
              ),
            ],
          ),
        );
      },
    );
  }

  //define drop down button list

  List<DropdownMenuItem> _dropDownButtonList() {
    final topics = Constants.topics;
    //return list of DropDownMenuItem from topics

    return topics
        .map((topic) => DropdownMenuItem(
              child: Text(topic),
              value: topic,
            ))
        .toList();
  }
}

// Use this to display the sheet
// buildBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//       isScrollControlled: true,
//       elevation: 10,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30.h), topRight: Radius.circular(30.h))),
//       context: context,
//       builder: (context) => AskQuestionForm());
// }
