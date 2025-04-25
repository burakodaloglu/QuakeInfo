import 'package:QuakeInfo/features/pages/bag/bag_screen.dart';
import 'package:QuakeInfo/features/pages/earthquake/earthquake_screen.dart';
import 'package:QuakeInfo/features/pages/info/information_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/pages/home/home_screen.dart';
import '../../features/pages/splash/splash_screen.dart';


final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String home = '/home';
  static const String earthquake = '/earthquake';
  static const String information = '/information';
  static const String bag = '/bag';
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
    GoRoute(
      path: AppRoutes.earthquake,
      builder: (context, state) => EarthquakeScreen(),
    ),
    GoRoute(
      path: AppRoutes.information,
      builder: (context, state) => InformationScreen(),
    ),
    GoRoute(
      path: AppRoutes.bag,
      builder: (context, state) => BagScreen(),
    ),
  ],
);