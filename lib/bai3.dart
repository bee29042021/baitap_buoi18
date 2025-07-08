import 'package:flutter/material.dart';

class Bai3 extends StatelessWidget {
  const Bai3({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {'name': 'Orange', 'price': '\$15', 'stock': 1000},
      {'name': 'Apple', 'price': '\$20', 'stock': 1000},
      {'name': 'Banana', 'price': '\$5', 'stock': 1000},
      {'name': 'Mango', 'price': '\$15', 'stock': 1000},
      {'name': 'Orange', 'price': '\$10', 'stock': 1000},
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
      ),
      body: Column(
        children: List.generate(products.length * 2 - 1, (i) {
          if (i.isOdd) {
            // Divider giữa các item
            return const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFE0E0E0),
            );
          }
          final index = i ~/ 2;
          final product = products[index];
          return Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6AA84F),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          product['name'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${product['stock']} ready stock',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          product['price'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.black38,
                      size: 26,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
