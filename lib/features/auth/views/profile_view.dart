// ignore_for_file: deprecated_member_use

import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/auth/widgets/custom_user_txet_field.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController address = TextEditingController();

  @override
  void initState() {
    name.text = 'Ali';
    email.text = 'ali@email.com';
    address.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,

        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Image.asset('assets/icons/Settings.png', width: 20),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
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
              CustomUserTxetField(controller: name, label: 'Name'),
              Gap(25),
              CustomUserTxetField(controller: email, label: 'Email'),
              Gap(25),
              CustomUserTxetField(controller: address, label: 'Address'),
              Gap(20),
              Divider(),
              Gap(10),
              ListTile(
                onTap: () {},
                tileColor: Color(0xffF3F4F6),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                leading: Image.asset(
                  'assets/icons/visa.png',
                  color: Colors.blue,
                  width: 60,
                ),
                title: CustomText(
                  text: 'Debit Card',
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
                subtitle: CustomText(
                  text: '**** **** **** 1234',
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
                trailing: CustomText(
                  text: 'Default',
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 120,
        decoration: BoxDecoration(color: AppColors.primary),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// Edit Button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    CustomText(
                      text: 'Edit Profile',
                      color: AppColors.primary,
                      weight: FontWeight.bold,
                    ),
                    Gap(5),
                    Icon(Icons.edit, color: AppColors.primary),
                  ],
                ),
              ),

              /// Log Out Button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    CustomText(
                      text: 'Logout',
                      color: Colors.white,
                      weight: FontWeight.bold,
                    ),
                    Gap(5),
                    Icon(Icons.logout, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
