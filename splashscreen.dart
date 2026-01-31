import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(const LoginPage());
    });

    return const Scaffold(
      body: Center(
        child: Text(
          'ToQueen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}