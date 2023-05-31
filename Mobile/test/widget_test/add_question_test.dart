import 'dart:html';

import 'package:askanything/presentation/widgets/ask_question_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AskQuestionForm', () {
    testWidgets('Upload Question', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: AskQuestionForm(),
        ),
      ));
      expect(find.byType(DraggableScrollableSheet), findsOneWidget);
      await tester.tap(find.text('Upload Image'));
      await tester.pumpAndSettle();
      expect(find.byType(DraggableScrollableSheet), findsOneWidget);
    });
  });
}
