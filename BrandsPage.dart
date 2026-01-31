import 'package:flutter/material.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'الماركات',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: const [
                _BrandCard(title: 'ToQueen'),
                _BrandCard(title: 'Luxe Beauty'),
                _BrandCard(title: 'Herbal Care'),
                _BrandCard(title: 'Glow Skin'),
                _BrandCard(title: 'Pure Oils'),
                _BrandCard(title: 'Natural Mix'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BrandCard extends StatelessWidget {
  final String title;
  const _BrandCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFBF4E2),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF222222),
          ),
        ),
      ),
    );
  }
}