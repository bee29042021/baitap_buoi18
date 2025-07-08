import 'package:flutter/material.dart';

class Bai2 extends StatelessWidget {
  const Bai2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              // Số dư và hình tròn
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Your Balance',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$1,700.00',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6AA84F),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Ô khuyến mãi
              Container(
                width: double.infinity,
                height: 250,
                padding: const EdgeInsets.only(top: 120, left: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF6AA84F),

                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'Buy Orange 10 Kg\nGet discount 25%',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'For you',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              // Lưới sản phẩm
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.1,
                  children: [
                    _buildProductCard(
                      icon: Icons.apple,
                      label: 'Fruit',
                      color: Colors.orange.shade200,
                      iconColor: Colors.orange.shade700,
                    ),
                    _buildProductCard(
                      icon: Icons.grass,
                      label: 'Vegetable',
                      color: Colors.green.shade100,
                      iconColor: Colors.green.shade700,
                    ),
                    _buildProductCard(
                      icon: Icons.cookie,
                      label: 'Cookies',
                      color: Colors.brown.shade100,
                      iconColor: Colors.brown.shade400,
                    ),
                    _buildProductCard(
                      icon: Icons.set_meal,
                      label: 'Meat',
                      color: Colors.red.shade100,
                      iconColor: Colors.red.shade400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildProductCard({
  required IconData icon,
  required String label,
  required Color color,
  required Color iconColor,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.03),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: iconColor, size: 32),
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
