import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/all_expenses_item_model.dart';

import '../../../../../../core/utilities/app_text_style.dart';
import 'all_expenses_header_item_widget.dart';

class AllExpensesItemWidget extends StatelessWidget {
  const AllExpensesItemWidget({super.key, required this.allExpensesItemModel, required this.activeIndex, required this.index});
  final AllExpensesItemModel allExpensesItemModel;
  final int activeIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpensesHeaderItemWidget(
          allExpensesItemModel: allExpensesItemModel,
          activeIndex: activeIndex,
          index: index,
        ),
        const SizedBox(height: 34,),
        Text(allExpensesItemModel.title,style:activeIndex == index?AppTextStyle.whiteColorMontserratW600S16: AppTextStyle.secondaryColorMontserratW600S16,),
        const SizedBox(height: 8,),
        Text(allExpensesItemModel.date,style: activeIndex == index?AppTextStyle.whiteColorMontserratW400S14: AppTextStyle.greyColorMontserratW400S12.copyWith(fontSize: 14),),
        const SizedBox(height: 16,),
        Text("\$${allExpensesItemModel.price}",style: activeIndex == index?AppTextStyle.whiteColorMontserratW600S24: AppTextStyle.primaryColorMontserratW600S24,),
      ],
    );
  }
}
