import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/utilities/app_text_style.dart';
import 'package:responsive_app/feature/dashboard/models/user_info_item_model.dart';

class UserInfoListTileWidget extends StatelessWidget {
  const UserInfoListTileWidget({super.key, required this.userInfoItemModel});
  final UserInfoItemModel userInfoItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightWhiteColor,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoItemModel.iconImage,
          ),
          title: Text(
              userInfoItemModel.title,
            style: AppTextStyle.secondaryColorMontserratW600S16,
          ),
          subtitle: SizedBox(
            width: 250,
            child: Text(
                userInfoItemModel.subtitle,
              style: AppTextStyle.greyColorMontserratW400S12,
            ),
          ),
        ),
      ),
    );
  }
}
