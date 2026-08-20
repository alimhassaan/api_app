import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
    this.icon,
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textScaler: TextScaler.linear(1.0),
      style: TextStyle(fontSize: size ?? 16, color: color, fontWeight: weight),
    );
  }
}
