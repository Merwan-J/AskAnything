// import 'package:askanything/presentation/routes/router.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mockito/mockito.dart';
// import 'package:askanything/application/auth/bloc/auth_bloc.dart';
// import 'package:askanything/application/auth/bloc/auth_state.dart';
// import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart';

// // Create a mock of the AuthBloc
// class MockAuthBloc extends Mock implements AuthBloc {}

// void main() {
//   group('getRoutes', () {
//     AuthBloc authBloc;
//     GoRouter goRouter;

//     setUp(() {
//       authBloc = MockAuthBloc();
//       goRouter = getRoutes(authBloc);
//     });

//     testWidgets('should return LoginScreen when authBloc state is AppInitialized', (WidgetTester tester) async {
//       when(authBloc.state).thenReturn(AppInitialized(isFirstRun: false));

//       await tester.pumpWidget(MaterialApp(
//         home: goRouter,
//       ));

//       expect(find.byType(LoginScreen), findsOneWidget);
//     });

//     testWidgets('should return LoginScreen when authBloc state is AuthUnInitialized', (WidgetTester tester) async {
//       when(authBloc.state).thenReturn(AuthUnInitialized());

//       await tester.pumpWidget(MaterialApp(
//         home: goRouter,
//       ));

//       expect(find.byType(LoginScreen), findsOneWidget);
//     });

//     testWidgets('should return LoginScreen when authBloc state is AuthAuthenticated', (WidgetTester tester) async {
//       when(authBloc.state).thenReturn(AuthAuthenticated());

//       await tester.pumpWidget(MaterialApp(
//         home: goRouter,
//       ));

//       expect(find.byType(LoginScreen), findsOneWidget);
//     });

//     testWidgets('should return LoginScreen for other authBloc states', (WidgetTester tester) async {
//       when(authBloc.state).thenReturn(AuthLoading());

//       await tester.pumpWidget(MaterialApp(
//         home: goRouter,
//       ));

//       expect(find.byType(LoginScreen), findsOneWidget);
//     });
//   });
// }
