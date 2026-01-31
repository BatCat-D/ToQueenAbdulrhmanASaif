import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToQueen',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFBF4E2),
        primaryColor: const Color(0xFFFE6F20),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFE6F20),
          foregroundColor: Color(0xFF222222),
        ),
      ),

      home: const SplashScreen(),
    );
  }
}