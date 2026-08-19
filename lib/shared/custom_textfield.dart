import 'package:api_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    required this.isPassword ,
    required this.controller,
  });
  final String hint;
  final bool isPassword;
  final TextEditingController controller;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.isPassword;
    super.initState();
  }

  void togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorHeight: 20,
      cursorColor: AppColors.primary,
      validator: (v) {
        if (v == null || v.isEmpty) {
          return 'Please fill ${widget.hint}';
        }
        return null;
      },

      obscureText: _obscureText,

      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: togglePassword,
                child: IconButton(
  onPressed: () {
    setState(() {
      _obscureText = !_obscureText;
    });
  },
  icon: Icon(
    _obscureText
        ? Icons.visibility_off
        : Icons.visibility,
  ),
),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
