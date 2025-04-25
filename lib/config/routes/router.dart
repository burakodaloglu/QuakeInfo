import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/pages/home/home_screen.dart';
import '../../features/pages/splash/splash_screen.dart';


final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String home = '/home';
}
final router=GoRouter(
  navigatorKey: _routerKey,
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);