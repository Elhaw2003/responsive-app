import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_text_style.dart';

import '../utilities/app_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        hintStyle: AppTextStyle.greyColorMontserratW400S16,
        hintText: hint,
        filled: true,
        fillColor: AppColors.lightWhiteColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.lightWhiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.lightWhiteColor),
        ),
      ),
    );
  }
}
