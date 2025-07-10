import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/income_details_model.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/item_income_details_widget.dart';

import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_text_style.dart';
class InComeDetailsWidget extends StatefulWidget {
  const InComeDetailsWidget({super.key});

  @override
  State<InComeDetailsWidget> createState() => _InComeDetailsWidgetState();
}

class _InComeDetailsWidgetState extends State<InComeDetailsWidget> {
  List<IncomeDetailsModel> incomeDetailsItems = [
    IncomeDetailsModel(title: "Design service", percentage: "40", containerColor: AppColors.darkBlueColor),
    IncomeDetailsModel(title: "Design product", percentage: "25", containerColor: AppColors.primaryColor),
    IncomeDetailsModel(title: "Product royalti", percentage: "20", containerColor: AppColors.secondaryColor),
    IncomeDetailsModel(title: "Other", percentage: "22", containerColor: AppColors.milkColor)
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemCount: incomeDetailsItems.length,
      itemBuilder: (context, index) {
        return ItemIncomeDetailsWidget(incomeDetailsModel: incomeDetailsItems[index],);
      },
    );
  }
}
