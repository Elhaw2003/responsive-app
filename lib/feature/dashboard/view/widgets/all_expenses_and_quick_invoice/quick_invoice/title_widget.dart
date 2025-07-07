import 'package:flutter/material.dart';

import '../../../../../../core/utilities/app_text_style.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,style: AppTextStyle.secondaryColorMontserratW500S16);
  }
}
