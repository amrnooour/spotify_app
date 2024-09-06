import 'package:flutter/material.dart';
import 'package:spotify_app/core/utils/app_theme.dart';
import 'package:spotify_app/presentation/splash/pages/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Splash(),
    );
  }
}
