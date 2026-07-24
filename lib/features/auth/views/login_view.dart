import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/auth/widgets/custom_btn.dart';
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
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset('assets/logo/logo.svg'),
                  Gap(10),

                  CustomText(
                    text: 'Welcome Back, Discover The Fast Food',
                    color: Colors.white,
                    size: 13,
                    weight: FontWeight.w500,
                  ),
                  Gap(60),
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
                    text: 'Login',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // ignore: avoid_print
                        print('Success Login');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
