import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/auth/views/signup_view.dart';
import 'package:api_app/features/auth/widgets/custom_btn.dart';
import 'package:api_app/root.dart';
import 'package:api_app/shared/custom_text.dart';
import 'package:api_app/shared/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset(
                  'assets/logo/logo.svg',
                  // ignore: deprecated_member_use
                  color: AppColors.primary,
                ),
                Gap(10),

                CustomText(
                  text: 'Welcome Back, Discover The Fast Food',
                  color: AppColors.primary,
                  size: 13,
                  weight: FontWeight.w500,
                ),
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
                    child: Column(
                      children: [
                        Gap(30),
                        CustomTextfield(
                          hint: 'Email Address',
                          controller: emailController,
                          isPassword: false,
                        ),
                        Gap(20),
                        CustomTextfield(
                          hint: 'Password',
                          controller: passwordController,
                          isPassword: true,
                        ),
                        Gap(60),
                        CustomAuthBtn(
                          color: AppColors.primary,
                          textColor: Colors.white,
                          text: 'Login',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // ignore: avoid_print
                              print('Success Login');
                            }
                          },
                        ),
                        Gap(20),
                        //? go to Sign up
                        CustomAuthBtn(
                          text: 'Create Account ?',
                          textColor: AppColors.primary,

                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) {
                                  return SignupView();
                                },
                              ),
                            );
                          },
                        ),
                        Gap(5),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (c) {
                                  return Root();
                                },
                              ),
                            );
                          },
                          child: CustomText(
                            text: 'Continue as a guest ?',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
