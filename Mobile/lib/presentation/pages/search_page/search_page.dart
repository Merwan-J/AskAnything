import 'package:askanything/presentation/base/app_bar.dart';
import 'package:askanything/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/question/question_list/bloc/question_list_bloc.dart';
import '../../widgets/question.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> topics = Constants.topics;

  int _selectedTopicIndex = 0;
  bool _filterSelected = true;
  String selectedTopic = Constants.topics[0];
  String filter = "";

  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(
          title: 'Search',
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Container(
              height: 110.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40.h,
                          child: TextField(
                            controller: _searchController,
                            onChanged: (value) {
                              setState(() {
                                filter = value.toLowerCase();
                              });
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                              ),
                              filled: true,
                              // fillColor: Color.fromARGB(160, 238, 238, 238),
                              // border: OutlineInputBorder(
                              //   borderSide: const BorderSide(
                              //       color: Color.fromARGB(198, 206, 205, 205),
                              //       width: 2.0),
                              //   borderRadius: BorderRadius.circular(10),
                              // ),
                              hintText: 'Search here...',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.h),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          // size: 30.h,
                        ),
                        // width: 55.h,
                        // height: 55.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF735C),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _filterSelected = !_filterSelected;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.h),
                          child: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                            // size: ,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF735C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                  Visibility(
                    visible: _filterSelected,
                    child: SizedBox(
                      height: 10.h,
                    ),
                  ),
                  Visibility(
                    visible: _filterSelected,
                    child: Container(
                      height: 30,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ChoiceChip(
                              label: Text(topics[index]),
                              selected: _selectedTopicIndex == index,
                              onSelected: (bool selected) {
                                setState(() {
                                  _selectedTopicIndex = selected ? index : 0;
                                  selectedTopic = topics[index].toLowerCase();
                                });
                              },
                              selectedColor: const Color(0xFFFF735C),
                              padding: const EdgeInsets.all(5),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 6,
                              ),
                          itemCount: topics.length),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    thickness: 1.0,
                  ),
                  Container()
                ],
              ),
            ),
            Expanded(child: BlocBuilder<QuestionListBloc, QuestionListState>(
              builder: (context, state) {
                if (state is QuestionListLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is QuestionListFailure) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                if (state is QuestionListEmpty) {
                  return Center(
                    child: Text("No questions found"),
                  );
                }
                if (state is QuestionListLoaded) {
                  var questions = state.questions;
                  questions = state.questions
                      .where((element) =>
                          element.topic == selectedTopic &&
                          element.title
                              .toLowerCase()
                              .contains(filter.toLowerCase()))
                      .toList();
                  return RefreshIndicator(
                    onRefresh: () {
                      BlocProvider.of<QuestionListBloc>(context)
                          .add(GetQuestionsEvent());
                      return Future<void>.delayed(const Duration(seconds: 3));
                    },
                    child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: QuestionW(question: questions[index]),
                          );
                        },
                        itemCount: questions.length),
                  );
                }
                return Center(
                  child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<QuestionListBloc>(context)
                            .add(GetQuestionsEvent());
                      },
                      child: Text("Refresh")),
                );
              },
            ))
          ]),
        ),
      ),
    );
  }
}
