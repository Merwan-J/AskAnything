import 'dart:io';

import 'package:askanything/application/answer/bloc/answer_bloc.dart';
import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/infrastructure/answer/answer_repository.dart';
import 'package:askanything/util/constants.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/answer/bloc/answer_event.dart';
import '../../application/question/question_edit/question_edit_bloc.dart';
import '../../application/question/question_edit/question_edit_events.dart';
import '../../application/question/question_edit/question_edit_state.dart';
import '../../domain/question/question_form.dart';

class AnswerEditForm extends StatefulWidget {
  Answer answer;
  AnswerEditForm({Key? key, required this.answer}) : super(key: key);

  @override
  State<AnswerEditForm> createState() => _AnswerEditFormState();
}

class _AnswerEditFormState extends State<AnswerEditForm> {
  final TextEditingController _answertext = TextEditingController();
  bool isanonymous = false;

  initState() {
    super.initState();
    _answertext.text = widget.answer.text;
    isanonymous = widget.answer.anonymous;

    setState(() {});
  }

  @override
  void dispose() {
    _answertext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.5,
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
                    return BlocProvider(
                      create: (context) => AnswerBloc(
                          RepositoryProvider.of<AnswerRepository>(context)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            controller: _answertext,
                            decoration: InputDecoration(
                              labelText: "update reply",
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(height: 24.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<AnswerBloc>(context).add(
                                    UpdateAnswerEvent(
                                        widget.answer.id, _answertext.text));
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
                      ),
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
