import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color(0xFFF6E7C6),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Center(
              child: Text(
                'عروض ToQueen',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF222222),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'التصنيفات',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _CategoryCard(title: 'المكياج'),
                _CategoryCard(title: 'العناية'),
                _CategoryCard(title: 'العطور'),
                _CategoryCard(title: 'المكملات'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'منتجات مميزة',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: const [
              _ProductCard(title: 'منتج 1'),
              _ProductCard(title: 'منتج 2'),
              _ProductCard(title: 'منتج 3'),
              _ProductCard(title: 'منتج 4'),
            ],
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String title;
  const _CategoryCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFBF4E2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF222222),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String title;
  const _ProductCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF222222),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}