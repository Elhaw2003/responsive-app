import 'package:flutter/material.dart';

import '../../../../../../core/utilities/app_text_style.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title, this.textStyle});
  final String title;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(title,style: textStyle ?? AppTextStyle.secondaryColorMontserratW500S16);
  }
}
