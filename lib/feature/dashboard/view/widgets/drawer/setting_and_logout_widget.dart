import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utilities/app_text_style.dart';

class SettingAndLogoutWidget extends StatelessWidget {
  const SettingAndLogoutWidget({super.key, required this.title, required this.iconImage});
  final String title;
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style:  AppTextStyle.secondaryColorMontserratW400S16,),
      leading: SvgPicture.asset(iconImage),
    );
  }
}
