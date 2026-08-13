import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';

class FoodCategory extends StatefulWidget {
  final List<String> categories;
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const FoodCategory({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex=widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.categories.length, (index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              // widget.onCategorySelected(index);
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : const Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
              child: CustomText(
                text: widget.categories[index],
                weight: FontWeight.w600,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          );
        }),
      ),
    );
  }
}
