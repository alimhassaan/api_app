import 'package:api_app/features/product/widgets/spicy_slider.dart';
import 'package:api_app/features/product/widgets/topping_card.dart';
import 'package:api_app/shared/custom_button.dart';
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
        child: SingleChildScrollView(
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
              Gap(50),
              // ToppingCard(name: 'Tomato', image: 'assets/images/tomato.png'),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ToppingCard(
                        name: 'Tomato',
                        image: 'assets/images/tomato.png',
                        onAdd: () {},
                      ),
                    );
                  }),
                ),
              ),

              Gap(20),
              CustomText(
                text: 'Side Options',
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(50),
              // ToppingCard(name: 'Tomato', image: 'assets/images/tomato.png'),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ToppingCard(
                        name: 'Tomato',
                        image: 'assets/images/tomato.png',
                      ),
                    );
                  }),
                ),
              ),

              Gap(200),
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
              CustomButton(text: 'Add To Cart', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
