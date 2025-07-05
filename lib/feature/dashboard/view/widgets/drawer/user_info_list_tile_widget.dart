import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/utilities/app_text_style.dart';

class UserInfoListTileWidget extends StatelessWidget {
  const UserInfoListTileWidget({super.key, required this.title, required this.subtitle, required this.iconImage});
  final String title;
  final String subtitle;
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightWhiteColor,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          iconImage,
        ),
        title: Text(
            title,
          style: AppTextStyle.secondaryColorMontserratW600S16,
        ),
        subtitle: Text(
            subtitle,
          style: AppTextStyle.greyColorMontserratW400S12,
        ),
      ),
    );
  }
}
