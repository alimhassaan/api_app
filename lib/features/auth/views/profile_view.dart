import 'package:api_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {


  TextEditingController name = TextEditingController();
    TextEditingController _email = TextEditingController();
    TextEditingController _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Image.asset('assets/icons/Settings.png', width: 20),
          ),
        ],
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKw9Sk7UA3YFK2ISB-zCAb-AiCh1u74RTOcNwytEBlg&s=10',
                  ),
                ),
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade100,
              ),
            ),
          ),
          Gap(30),
          TextField(
            controller: name,
            cursorColor: Colors.white,
            cursorHeight: 20,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
