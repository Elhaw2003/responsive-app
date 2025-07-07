import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/all_expenses_item_model.dart';
import '../../../../../../core/utilities/app_colors.dart';

import 'all_expenses_item_widget.dart';

class AllExpensesItemContainerWidget extends StatelessWidget {
  const AllExpensesItemContainerWidget({super.key, required this.allExpensesItemModel, this.onTap, required this.activeIndex, required this.index});
  final AllExpensesItemModel allExpensesItemModel;
  final void Function()? onTap;
  final int activeIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 16,top: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:activeIndex == index? AppColors.primaryColor: AppColors.whiteColor,
            border: Border.all(color: activeIndex == index? AppColors.whiteColor.withOpacity(0.1): AppColors.borderContainerColor)
        ),
        child:  AllExpensesItemWidget(
          allExpensesItemModel: allExpensesItemModel,
          activeIndex: activeIndex,
          index: index,
        ),
      ),
    );
  }
}
