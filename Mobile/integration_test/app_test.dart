// import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart'
//     as app;
import 'dart:math';

import 'package:askanything/main.dart' as app;
import 'package:askanything/presentation/pages/mainscreen/main_screen.dart';
import 'package:askanything/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('register with new email and password', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      final widget = find.byType(CustomButton);
      await tester.scrollUntilVisible(widget, 100);
      await tester.tap(find.byType(CustomButton));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      final name = find.byKey(const Key('name'));
      final email = find.byKey(const Key('email'));
      final password = find.byKey(const Key('password'));
      final confirm_password = find.byKey(const Key('confirm_password'));

      await tester.tap(name);
      await tester.enterText(name, "elisur");

      await tester.tap(email);
      await tester.enterText(email, "elisur@f.com");

      await tester.tap(password);
      await tester.enterText(password, "123");

      await tester.tap(confirm_password);
      await tester.enterText(confirm_password, "123");

      final register_button = find.byKey(const Key('register'));
      await tester.tap(register_button);

      await tester.pumpAndSettle(const Duration(seconds: 5));
      await Future.delayed(const Duration(seconds: 2));

      expect(find.byType(MainScreen), findsOneWidget);
    });

    testWidgets('login with wrong email and password', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(CustomButton));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(ElevatedButton));
      final login_button = find.byKey(const Key('login'));
      await tester.tap(login_button);
      await tester.enterText(find.byType(TextField).at(0), 'gg@gmil.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(1), '1293');
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(ElevatedButton));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      expect(find.byType(MainScreen), findsNothing);
    });
  });

  testWidgets('log', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 2));
    await tester.tap(find.byType(CustomButton));
    await Future.delayed(const Duration(seconds: 2));
    await tester.tap(find.byType(ElevatedButton));
    final login_button = find.byKey(const Key('login'));
    await tester.tap(login_button);
    await tester.enterText(find.byType(TextField).at(0), 'gg@gmail.com');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(1), '123');
    await Future.delayed(const Duration(seconds: 2));
    await tester.tap(find.byType(ElevatedButton));
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 2));
    expect(find.byType(MainScreen), findsOneWidget);

    final add_question = find.byKey(const Key('add_questiion'));
    await tester.tap(add_question);
    final draggableScrollableSheet = find.byType(DraggableScrollableSheet);
    expect(draggableScrollableSheet, findsOneWidget);
    final dropdownButtonFormField =
        find.byKey(Key('draggable_scrollable_sheet'));
    await tester.tap(dropdownButtonFormField);
    await tester.pumpAndSettle();
    final dropdownItems = find.byType(DropdownMenuItem);
    await tester.tap(dropdownItems.at(1));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('title')), 'test question');
    await tester.enterText(find.byKey(const Key('description')),
        'test description for the test question');
    final switchWidget = find.byKey(Key('switch'));
    await tester.tap(find.byKey(const Key('post')));
    expect(find.byType(DraggableScrollableSheet), findsNothing);
  });
}
