import 'package:api_app/features/cart/widgets/cart_item.dart';
import 'package:api_app/shared/custom_button.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 100),
          itemCount: 4,
          itemBuilder: ((context, index) {
            return CartItem(
              image: 'assets/images/test.png',
              text: 'Humburger',
              description: 'Veggie burger',
              number: 1,
            );
          }),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(20),

        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Total', size: 16, weight: FontWeight.bold),
                CustomText(text: '\$ 18.9', size: 24, weight: FontWeight.bold),
              ],
            ),
            CustomButton(text: 'Checkout', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
