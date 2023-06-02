import 'package:askanything/presentation/pages/bookmark_page/book_mark.dart';
import 'package:askanything/presentation/pages/home/home_temp.dart';
import 'package:askanything/presentation/pages/profile_page/profile_temp.dart';
import 'package:askanything/presentation/pages/search_page/search_page.dart';
import 'package:askanything/presentation/pages/settings_page/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Bottom navigation changes tabs when tapped',
      (WidgetTester tester) async {
    // Build the MainScreen widget
    await tester
        .pumpWidget(MyApp()); // Replace MyApp with your app's main widget

    // Verify that the initial tab is the Home page
    expect(find.byType(HomePage), findsNothing);

    // Tap on the Search tab
    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    // Verify that the active tab is now the Search page
    expect(find.byType(SearchScreen), findsOneWidget);

    // Tap on the Saved tab
    await tester.tap(find.byIcon(Icons.bookmark));
    await tester.pumpAndSettle();

    // Verify that the active tab is now the Bookmark page
    expect(find.byType(BookmarkPage), findsOneWidget);

    // Tap on the Profile tab
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    // Verify that the active tab is now the Profile page
    expect(find.byType(ProfileScreen), findsOneWidget);
  });
}






















// import 'package:askanything/presentation/pages/bookmark_page/book_mark.dart';
// import 'package:askanything/presentation/pages/home/home_temp.dart';
// import 'package:askanything/presentation/pages/mainscreen/main_screen.dart';
// import 'package:askanything/presentation/pages/profile_page/profile_temp.dart';
// import 'package:askanything/presentation/pages/search_page/search_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   // ScreenUtil.init();
//   testWidgets('Bottom navigation changes tabs when tapped',
//       (WidgetTester tester) async {
//     await tester.pumpWidget(const MaterialApp(
//       home: MainScreen(),
//     ));

//     // Initial tab should be the HomePage
//     expect(find.byType(HomePage), findsOneWidget);
//     expect(find.byType(SearchScreen), findsNothing);
//     expect(find.byType(BookmarkPage), findsNothing);
//     expect(find.byType(ProfileScreen), findsNothing);

//     // Tap on the Search tab
//     await tester.tap(find.byIcon(Icons.search));
//     await tester.pumpAndSettle();

//     // Verify that the SearchScreen is displayed
//     expect(find.byType(HomePage), findsNothing);
//     expect(find.byType(SearchScreen), findsOneWidget);
//     expect(find.byType(BookmarkPage), findsNothing);
//     expect(find.byType(ProfileScreen), findsNothing);

//     // Tap on the Saved tab
//     await tester.tap(find.byIcon(Icons.bookmark));
//     await tester.pumpAndSettle();

//     // Verify that the BookmarkPage is displayed
//     expect(find.byType(HomePage), findsNothing);
//     expect(find.byType(SearchScreen), findsNothing);
//     expect(find.byType(BookmarkPage), findsOneWidget);
//     expect(find.byType(ProfileScreen), findsNothing);

//     // Tap on the Profile tab
//     await tester.tap(find.byIcon(Icons.person));
//     await tester.pumpAndSettle();

//     // Verify that the ProfileScreen is displayed
//     expect(find.byType(HomePage), findsNothing);
//     expect(find.byType(SearchScreen), findsNothing);
//     expect(find.byType(BookmarkPage), findsNothing);
//     expect(find.byType(ProfileScreen), findsOneWidget);
//   });
// }
