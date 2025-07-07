import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class CustomBackgroundContainerWidget extends StatelessWidget {
  const CustomBackgroundContainerWidget({super.key, required this.child, required this.padding});
  final Widget child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
