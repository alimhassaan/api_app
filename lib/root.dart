import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/auth/views/profile_view.dart';
import 'package:api_app/features/cart/views/cart_view.dart';
import 'package:api_app/features/home/views/home_view.dart';
import 'package:api_app/features/orderHistory/views/order_history_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;
  late List<Widget> screens;
  int currentScreen = 0;
  @override
  void initState() {
    screens = [HomeView(), CartView(), OrderHistoryView(), ProfileView()];
    controller = PageController(initialPage: currentScreen);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),

        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade700.withValues(alpha: 0.7),
          currentIndex: currentScreen,
          onTap: (index) {
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(currentScreen);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(CupertinoIcons.cart),
            ),
            BottomNavigationBarItem(
              label: 'Order History',
              icon: Icon(Icons.local_restaurant_sharp),
            ),
            BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(CupertinoIcons.profile_circled),
            ),
          ],
        ),
      ),
    );
  }
}
