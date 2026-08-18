import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/shared/custom_button.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 10),
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/test.png', width: 100),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Humburger Humburger',
                              weight: FontWeight.bold,
                            ),
                            CustomText(text: 'Qty : x3'),
                            CustomText(text: 'Price : 20\$'),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    CustomButton(
                      text: "Order Again",
                      color: AppColors.primary,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
