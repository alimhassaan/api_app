import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ToppingCard extends StatelessWidget {
  final String name;
  final String image;
  final Function()? onAdd;

  const ToppingCard({
    super.key,
    required this.name,
    required this.image,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(height: 90, width: 90, color: AppColors.primary),
        ),

        Positioned(
          top: -40,
          right: -5,
          left: -5,
          child: SizedBox(
            height: 70,
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),
        ),

        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                CustomText(
                  text: name,
                  color: Colors.white,
                  size: 14,
                  weight: FontWeight.w600,
                ),
                Gap(5),
                GestureDetector(
                  onTap: onAdd,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.add, color: Colors.white, size: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
