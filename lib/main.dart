import 'package:flutter/material.dart';
import 'package:quakeinfo/config/routes/router.dart';
import 'features/splash/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'QuakeInfo',
      routerConfig: router,
    );
  }
}
