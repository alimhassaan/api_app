import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class CardItem extends StatefulWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.description,
  });
  final String image;
  final String text;
  final String description;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: -10,
                  right: 0,
                  left: 0,

                  child: Image.asset('assets/icons/shadow.png'),
                ),
                Center(
                  child: Image.asset(widget.image, width: 120, height: 120),
                ),
              ],
            ),
            Gap(10),
            CustomText(text: widget.text, weight: FontWeight.bold),
            CustomText(text: widget.description),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: isSelected
                      ? Icon(Icons.favorite, color: AppColors.primary)
                      : Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.primary,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
