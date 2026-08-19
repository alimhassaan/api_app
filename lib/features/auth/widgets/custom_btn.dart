import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({super.key, this.onTap, required this.text, this.color, this.textColor});
  final Function()? onTap;
  final String text;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        width: double.infinity,
        child: Center(
          child: CustomText(
            text: text,
            weight: FontWeight.bold,
            color: textColor??AppColors.primary,
            size: 15,
          ),
        ),
      ),
    );
  }
}
