import 'dart:io';

import 'package:askanything/util/constants.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/question/question_edit/question_edit_bloc.dart';
import '../../application/question/question_edit/question_edit_events.dart';
import '../../application/question/question_edit/question_edit_state.dart';
import '../../domain/question/question_form.dart';

class UpdateQuestionForm extends StatefulWidget {
  QuestionForm questionForm;
  final String questionId;
  UpdateQuestionForm(
      {Key? key, required this.questionForm, required this.questionId})
      : super(key: key);

  @override
  State<UpdateQuestionForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateQuestionForm> {
  final TextEditingController _questionTitle = TextEditingController();
  final TextEditingController _questionDescription = TextEditingController();
  String _selectedTopic = "";
  bool isanonymous = false;
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  initState() {
    super.initState();

    setState(() {
      _questionTitle.text = widget.questionForm.title;
      _questionDescription.text = widget.questionForm.description;
      _selectedTopic = widget.questionForm.topic;
      isanonymous = widget.questionForm.anonymous;
    });
  }

  @override
  void dispose() {
    _questionTitle.dispose();
    _questionDescription.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
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
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30.h,
                  right: 20.h,
                  left: 20.h,
                  // ),
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                // height: MediaQuery.of(context).size.height * 0.8,
                child: BlocConsumer<QuestionEditBloc, QuestionEditState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // DropdownButtonFormField(
                        //     value: _selectedTopic != "" ? _selectedTopic : null,
                        //     items: _dropDownButtonList(),
                        //     onChanged: (value) {
                        //       setState(() {
                        //         _selectedTopic = value;
                        //       });
                        //     }),
                        SizedBox(
                          height: 16.h,
                        ),
                        TextFormField(
                          controller: _questionTitle,
                          decoration: InputDecoration(
                            labelText: 'Title',
                          ),
                        ),
                        SizedBox(height: 16.h),
                        TextField(
                          controller: _questionDescription,
                          maxLines: 6,
                          decoration:
                              InputDecoration(hintText: "Enter description"),
                        ),
                        SizedBox(height: 16.h),

                        Row(
                          children: [
                            Text("Anonymous"),
                            Switch(
                                activeTrackColor:
                                    Color.fromRGBO(226, 230, 234, 1),
                                // activeColor: Color.fromRGBO(255, 115, 92, 1),
                                activeColor: CustomColor.primaryColor,
                                value: isanonymous,
                                onChanged: (value) {
                                  setState(() {
                                    isanonymous = value;
                                  });
                                }),
                          ],
                        ),
                        // TextFormField(
                        //   controller: _confirmPasswordController,
                        //   decoration: InputDecoration(
                        //     labelText: 'Confirm New Password',
                        //   ),
                        // ),
                        SizedBox(height: 24.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              var newTitle = _questionTitle.text;
                              var newDescription = _questionDescription.text;

                              QuestionForm questionForm = QuestionForm(
                                  title: newTitle,
                                  description: newDescription,
                                  anonymous: isanonymous,
                                  topic: _selectedTopic);

                              BlocProvider.of<QuestionEditBloc>(context).add(
                                  QuestionEditEvent.edit(
                                      questionForm: questionForm,
                                      questionId: widget.questionId));
                              Navigator.of(context).pop();
                            },
                            child: Text('Update'),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

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
