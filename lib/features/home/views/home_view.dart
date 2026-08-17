import 'package:api_app/features/home/widgets/food_category.dart';
import 'package:api_app/features/home/widgets/card_item.dart';
import 'package:api_app/features/home/widgets/search_field.dart';
import 'package:api_app/features/home/widgets/use_header.dart';
import 'package:api_app/features/product/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ['All', 'Combos', 'Sliders', 'Classic'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              floating: false,
              pinned: true,
              toolbarHeight: 160,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 38, right: 20, left: 20),
                child: Column(children: [UserHeader(), Gap(20), SearchField()]),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    // Gap(75),
                    // UseHeader(),
                    // Gap(25),
                    // SearchField(),
                    // Gap(20),
                    FoodCategory(
                      categories: List<String>.from(category),
                      selectedIndex: selectedIndex,
                      onCategorySelected: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 6, (
                  context,
                  index,
                ) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDetailsView();
                          },
                        ),
                      );
                    },
                    child: CardItem(
                      text: 'Cheese Burger',
                      image: 'assets/images/test.png',
                      description: "Wendy's Burger",
                    ),
                  );
                }),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
