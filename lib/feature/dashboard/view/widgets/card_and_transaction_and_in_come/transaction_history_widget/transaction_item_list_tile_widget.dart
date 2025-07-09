import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/feature/dashboard/models/transaction_item_model.dart';

import '../../../../../../core/utilities/app_text_style.dart';

class TransactionItemListTileWidget extends StatelessWidget {
  const TransactionItemListTileWidget({super.key, required this.transactionItemModel});
  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transactionItemModel.title,style: AppTextStyle.secondaryColorMontserratW600S16.copyWith(fontSize: 12),),
      trailing: Text("\$${transactionItemModel.amount}",style: AppTextStyle.secondaryColorMontserratW600S20.copyWith(color:  transactionItemModel.withDrawal ? AppColors.orangeColor : AppColors.greenColor),),
      subtitle: Text("${transactionItemModel.date} at ${transactionItemModel.hour}",style: AppTextStyle.greyColorMontserratW400S12,),
    );
  }
}
