import 'package:flutter/material.dart';

class ToppingCard extends StatelessWidget {
  final String name;
  final String image;

  const ToppingCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xFF3A2929),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(.12),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 68,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Container(
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE92845),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
