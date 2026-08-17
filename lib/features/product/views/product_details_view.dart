import 'package:api_app/features/product/widgets/spicy_slider.dart';
import 'package:api_app/features/product/widgets/topping_card.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0.7;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpicySlider(
              value: value,
              onChanged: (v) {
                setState(() {
                  value = v;
                });
              },
            ),
            Gap(20),
            CustomText(text: 'Toppings', size: 20, weight: FontWeight.bold),
            Gap(20),
            ToppingCard(name: 'Tomato', image: 'assets/images/tomato.png'),
          ],
        ),
      ),
    );
  }
}
