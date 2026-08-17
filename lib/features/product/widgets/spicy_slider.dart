import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/sandwich.png', height: 250),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  'Customize Your Burger\n to Your Tastes.\nUltimate Experience',
            ),
            Slider(
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.primary,
              inactiveColor: Colors.grey.shade300,
              min: 0,
              max: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: '🥶'),
                Gap(100),
                CustomText(text: '🔥'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
