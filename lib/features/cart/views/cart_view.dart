// ignore_for_file: invalid_annotation_target, unused_element

import 'package:api_app/features/cart/widgets/cart_item.dart';
import 'package:api_app/shared/custom_button.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final int itemCount = 20;
  late List<int> quantities;
  @override
  void initState() {
    quantities = List.generate(itemCount, (index) => 1);
    super.initState();
  }

  void onAdd(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void onMinus(int index) {
    setState(() {
      if (quantities[index] > 1) {
        quantities[index]--;
      }
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 10),
          itemCount: itemCount,
          itemBuilder: ((context, index) {
            return CartItem(
              image: 'assets/images/test.png',
              text: 'Humburger',
              description: 'Veggie burger',
              number: quantities[index],
              onAdd: () => onAdd(index),
              onMinus: () => onMinus(index),
            );
          }),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
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
