import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';

class LoginController extends GetxController {
  final userController = TextEditingController();
  final passController = TextEditingController();
  var message = ''.obs;

  void login() {
    if (userController.text == 'AAS' &&
        passController.text == '123') {
      Get.off(const HomePage());
    } else {
      message.value = 'بيانات غير صحيحة';
    }
  }

  void guestLogin() {
    Get.off(const HomePage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(LoginController());

    return Scaffold(
      backgroundColor: const Color(0xFFFBF4E2),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'ToQueen',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFE6F20),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: c.userController,
                  decoration: InputDecoration(
                    hintText: 'اسم المستخدم',
                    filled: true,
                    fillColor: const Color(0xFFF6E7C6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: c.passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور',
                    filled: true,
                    fillColor: const Color(0xFFF6E7C6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFE6F20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: c.login,
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFFFE6F20),
                      side: const BorderSide(color: Color(0xFFFE6F20)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: c.guestLogin,
                    child: const Text(
                      'الدخول بدون تسجيل',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'إنشاء حساب جديد',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Obx(
                      () => Text(
                    c.message.value,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}