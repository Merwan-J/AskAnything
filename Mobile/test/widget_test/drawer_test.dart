import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:askanything/presentation/widgets/end_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyDrawer should navigate to correct routes when tapped',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            body: MyDrawer(),
          );
        },
      ),
    ));

    expect(find.text('Admin Dashboard'), findsOneWidget);
    expect(find.text('All Users'), findsOneWidget);
    expect(find.text('Admin User'), findsOneWidget);
    expect(find.text('Pending Questions'), findsOneWidget);
    await tester.pumpAndSettle();
  });
}
