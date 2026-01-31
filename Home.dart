import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'HomeBody.dart';
import 'BrandsPage.dart';
import 'CartPage.dart';
import 'ProfilePage.dart';

class HomeController extends GetxController {
  var index = 0.obs;

  final pages = const [
    ProfilePage(),
    CartPage(),
    BrandsPage(),
    HomeBody(),
  ];

  void change(int i) => index.value = i;

  void logout() {
    Get.offAll(const LoginPage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToQueen'),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            tooltip: '',
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                color: const Color(0xFFFBF4E2),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Color(0xFF222222)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'البحث عن منتج...',
                        style: TextStyle(color: Color(0xFF222222)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('الرئيسية'),
                      trailing: const Icon(Icons.arrow_back_ios, size: 16),
                      onTap: () {
                        c.change(3);
                        Get.back();
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      title: const Text('الماركات'),
                      trailing: const Icon(Icons.arrow_back_ios, size: 16),
                      onTap: () {
                        c.change(2);
                        Get.back();
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      title: const Text('السلة'),
                      trailing: const Icon(Icons.arrow_back_ios, size: 16),
                      onTap: () {
                        c.change(1);
                        Get.back();
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      title: const Text('حسابي'),
                      trailing: const Icon(Icons.arrow_back_ios, size: 16),
                      onTap: () {
                        c.change(0);
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFE6F20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: c.logout,
                    child: const Text(
                      'تسجيل الخروج',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(
            () => IndexedStack(
          index: c.index.value,
          children: c.pages,
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: c.index.value,
          onTap: c.change,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFFFE6F20),
          unselectedItemColor: const Color(0xFF222222),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'حسابي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'السلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              label: 'الماركات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية',
            ),
          ],
        ),
      ),
    );
  }
}