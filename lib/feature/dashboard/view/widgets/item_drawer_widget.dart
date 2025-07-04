import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/utilities/app_text_style.dart';
import 'package:responsive_app/feature/dashboard/models/item_drawer_model.dart';

class ItemDrawerWidget extends StatelessWidget {
  const ItemDrawerWidget({super.key, required this.itemDrawerModel, required this.index, required this.activeIndex});
  final ItemDrawerModel itemDrawerModel;
  final int index ;
  final int activeIndex ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemDrawerModel.title,style: activeIndex == index?AppTextStyle.primaryColorMontserratW700S16: AppTextStyle.secondaryColorMontserratW400S16,),
      leading: SvgPicture.asset(itemDrawerModel.image),
      trailing: activeIndex == index ? Container(width: 3.7,color: AppColors.primaryColor,):const SizedBox.shrink(),
    );
  }
}
