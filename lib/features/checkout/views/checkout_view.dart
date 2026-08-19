// ignore_for_file: deprecated_member_use

import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/checkout/widgets/order_details_widget.dart';
import 'package:api_app/shared/custom_button.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selecterMethod = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Order Summary',
                size: 20,
                weight: FontWeight.bold,
              ),

              Gap(10),
              OrderDetailsWidget(
                order: '18.5',
                taxes: '3.50',
                fees: '2.5',
                total: '100.00',
              ),
              Gap(80),
              CustomText(
                text: 'Payment Method',
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(20),

              ListTile(
                onTap: () => setState(() => selecterMethod = 'Cash'),
                tileColor: Color(0xff3C2F2F),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),

                leading: Image.asset('assets/icons/coin.png', width: 30),
                title: CustomText(
                  text: 'Cash on Delivery',
                  color: Colors.white,
                ),
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'Cash',
                  groupValue: selecterMethod,
                  onChanged: (v) => setState(() => selecterMethod = v!),
                ),
              ),
              Gap(10),
              ListTile(
                onTap: () => setState(() => selecterMethod = 'Visa'),
                tileColor: Colors.blue.shade900,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                leading: Image.asset('assets/icons/visa.png', width: 50),
                title: CustomText(text: 'Debit Card', color: Colors.white),
                subtitle: CustomText(
                  text: '**** **** **** 1234',
                  color: Colors.white,
                ),
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'Visa',
                  groupValue: selecterMethod,
                  onChanged: (v) => setState(() => selecterMethod = v!),
                ),
              ),
              Gap(5),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xffEF2A39),
                    value: true,
                    onChanged: (v) {},
                  ),
                  CustomText(
                    text: 'Save card details for next time',
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Total', size: 16, weight: FontWeight.bold),
                  CustomText(
                    text: '\$ 18.9',
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              CustomButton(
                text: 'Pay Now',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 200,
                          ),
                          child: Container(
                            width: 300,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade800,
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: AppColors.primary,
                                  child: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Gap(10),
                                CustomText(
                                  text: 'Success!',
                                  size: 20,
                                  color: AppColors.primary,
                                  weight: FontWeight.bold,
                                ),
                                Gap(3),

                                CustomText(
                                  text:
                                      'Your payment was successful.\nA receipt for this purchase \nhas been sent to your email.',
                                  color: Colors.grey.shade600,
                                  size: 11,
                                  weight: FontWeight.bold,
                                ),
                                Gap(10),
                                CustomButton(
                                  text: 'Close',
                                  width: 200,
                                  onTap: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
