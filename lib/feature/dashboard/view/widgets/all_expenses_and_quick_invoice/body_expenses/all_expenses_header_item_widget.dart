import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/feature/dashboard/models/all_expenses_item_model.dart';
import '../../../../../../core/utilities/app_colors.dart';
class AllExpensesHeaderItemWidget extends StatelessWidget {
  const AllExpensesHeaderItemWidget({super.key, required this.allExpensesItemModel, required this.activeIndex, required this.index});
  final AllExpensesItemModel allExpensesItemModel;
  final int activeIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:activeIndex == index ?  AppColors.whiteColor.withOpacity(0.1):AppColors.lightWhiteColor,
          radius: 40,
          child: SvgPicture.asset(
              allExpensesItemModel.iconImage,
              colorFilter: ColorFilter.mode(activeIndex == index? AppColors.whiteColor:AppColors.primaryColor, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
         Icon(Icons.arrow_forward_ios_rounded,color:activeIndex == index? AppColors.whiteColor: AppColors.secondaryColor,size: 24,)
      ],
    );
  }
}
