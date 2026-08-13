import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/logo/logo.svg',
              // ignore: deprecated_member_use
              color: AppColors.primary,
              height: 35,
            ),
            Gap(5),

            CustomText(
              text: 'Hello, Ali!',
              size: 16,
              weight: FontWeight.bold,
              color: Colors.grey,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 31,
          backgroundColor: AppColors.primary,
          child: Icon(CupertinoIcons.person, color: Colors.white, size: 30),
        ),
      ],
    );
  }
}
