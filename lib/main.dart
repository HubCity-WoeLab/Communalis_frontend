import 'package:flutter/material.dart';
import 'package:mobile_app_communalis/screens/auth/splash_screen.dart';
import 'constants/app_themes.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Communalis',
      theme: AppThemes.lightTheme,
      home: SplashScreen(),
      routes: AppRoutes.routes,
    );
  }
}
