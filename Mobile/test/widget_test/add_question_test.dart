import 'dart:js';

import 'package:askanything/application/question/question_list/bloc/question_list_bloc.dart';
import 'package:askanything/application/question/question_post/bloc/question_post_bloc.dart';
import 'package:askanything/infrastructure/question/question_provider.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/presentation/widgets/ask_question_form.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../unit_test/get_token_test.dart';

void main() {
  testWidgets('given Add question is', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => CustomHttpClient()),
          RepositoryProvider(create: (context) => SharedPreferenceService()),
        ],
        child: MultiRepositoryProvider(
            providers: [
              RepositoryProvider(
                  create: (context) => QuestionProvider(
                      RepositoryProvider.of<CustomHttpClient>(context)))
            ],
            child: MultiRepositoryProvider(
                providers: [
                  RepositoryProvider(
                      create: (context) => QuestionRepository(
                          RepositoryProvider.of<QuestionProvider>(context)))
                ],
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider(
                        create: (context) => QuestionPostBloc(
                            RepositoryProvider.of<QuestionRepository>(context),
                            BlocProvider.of<QuestionListBloc>(context)))
                  ],
                  child: AskQuestionForm(),
                ))),
      ),
    ));

    expect(find.text('Ask a Question'), findsNothing);
    // expect(find.text('Title'), findsOneWidget);
    // expect(find.text('Description'), findsOneWidget);
    // expect(find.text('Tags'), findsOneWidget);
    // expect(find.text('Add Question'), findsOneWidget);
    await tester.pumpAndSettle();
  });
}
