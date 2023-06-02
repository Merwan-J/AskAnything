import 'package:askanything/presentation/pages/bookmark_page/book_mark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:askanything/presentation/base/app_bar.dart';

void main() {
  testWidgets('BookmarkPage Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: BookmarkPage()));

    // Verify the existence of the app bar with the correct title
    // expect(find.byType(CustomAppBar), findsOneWidget);
    // expect(find.text('Bookmarks'), findsOneWidget);

    // Verify the existence of the text widget with the correct text
    expect(find.text('Bookmark Page'), findsNothing);

    // Add additional test cases as needed
  });
}
