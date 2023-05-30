import 'package:askanything/presentation/routes/routes_dart.dart';

import 'package:go_router/go_router.dart';

final GoRouter goRoute = GoRouter(
    redirect: (context, state) {
      return null;
    },
    routes: <GoRoute>[
      // GoRoute(path: Routes.HOME, builder: (context, state) => App(),)
    ]);
