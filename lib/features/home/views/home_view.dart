import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ['All', 'Combos', 'Sliders', 'Classic'];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(75),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ignore: deprecated_member_use
                      SvgPicture.asset(
                        'assets/logo/logo.svg',
                        // ignore: deprecated_member_use
                        color: AppColors.primary,
                        height: 35,
                      ),
                      CustomText(
                        text: 'Hello,Ali',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(radius: 31),
                ],
              ),
              Gap(20),
              Material(
                elevation: 4,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.search),
                    hintText: 'Search..',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: CustomText(text: category[0]),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
