import 'package:api_app/core/constants/app_colors.dart';
import 'package:api_app/features/auth/widgets/custom_btn.dart';
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
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(100),
              SvgPicture.asset('assets/logo/logo.svg'),
              Gap(100),
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
              Gap(15),
              CustomTextfield(
                hint: 'Confirm Password',
                controller: confirmPassController,
                isPassword: true,
              ),
              Gap(60),
              CustomAuthBtn(
                text: 'Sign Up',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // ignore: avoid_print
                    print('Success Regiseter');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
