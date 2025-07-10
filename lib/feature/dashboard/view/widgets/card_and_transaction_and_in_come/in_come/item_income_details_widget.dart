import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/income_details_model.dart';

import '../../../../../../core/utilities/app_text_style.dart';

class ItemIncomeDetailsWidget extends StatelessWidget {
  const ItemIncomeDetailsWidget({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(incomeDetailsModel.title,style: AppTextStyle.secondaryColorMontserratW400S16,),
      leading: Container(
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: incomeDetailsModel.containerColor,
        ),
        width: 12,
        height: 12,
      ),
      trailing: Text("${incomeDetailsModel.percentage}%",style: AppTextStyle.primaryColorMontserratW500S16,),
    );
  }
}
