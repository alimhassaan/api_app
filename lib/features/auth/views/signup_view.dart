import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/auth/views/login_view.dart';
import 'package:api_app/features/auth/widgets/custom_btn.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:api_app/shared/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class SignupView extends StatelessWidget {
  SignupView({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(100),

            SvgPicture.asset(
              'assets/logo/logo.svg',
              // ignore: deprecated_member_use
              color: AppColors.primary,
            ),
            CustomText(text: "Welcome To our Food App"),
            Gap(50),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(30),
                      CustomTextfield(
                        hint: 'Name',
                        controller: nameController,
                        isPassword: false,
                      ),
                      Gap(15),
                      CustomTextfield(
                        hint: 'Email Address',
                        controller: nameController,
                        isPassword: false,
                      ),
                      Gap(15),
                      CustomTextfield(
                        hint: 'Password',
                        controller: passController,
                        isPassword: true,
                      ),

                      Gap(30),
                      //? Sign up
                      CustomAuthBtn(
                        text: 'Sign Up',
                        textColor: Colors.white,
                        color: Colors.transparent,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // ignore: avoid_print
                            print('Success Regiseter');
                          }
                        },
                      ),
                      Gap(20),
                      //? go to login
                      CustomAuthBtn(
                        text: 'Go TO Login ?',
                        textColor: AppColors.primary,

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (c) {
                                return LoginView();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
