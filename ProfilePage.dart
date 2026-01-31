import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFF6E7C6),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xFFFE6F20),
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                SizedBox(height: 12),
                Text(
                  'اسم المستخدم',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF222222),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'user@email.com',
                  style: TextStyle(color: Color(0xFF222222)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _ProfileItem(icon: Icons.person_outline, title: 'معلوماتي'),
          _ProfileItem(icon: Icons.shopping_bag_outlined, title: 'طلباتي'),
          _ProfileItem(icon: Icons.location_on_outlined, title: 'العناوين'),
          _ProfileItem(icon: Icons.settings_outlined, title: 'الإعدادات'),
          _ProfileItem(icon: Icons.logout, title: 'تسجيل الخروج'),
        ],
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ProfileItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFFE6F20)),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF222222),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(Icons.arrow_forward_ios,
              size: 16, color: Color(0xFF222222)),
        ],
      ),
    );
  }
}