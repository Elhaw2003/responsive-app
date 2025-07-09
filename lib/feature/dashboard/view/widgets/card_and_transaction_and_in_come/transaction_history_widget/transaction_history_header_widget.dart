import 'package:flutter/material.dart';

import '../../../../../../core/utilities/app_text_style.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../all_expenses_and_quick_invoice/quick_invoice/title_widget.dart';

class TransactionHistoryHeaderWidget extends StatelessWidget {
  const TransactionHistoryHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleWidget(title: AppTexts.transactionHistory,textStyle: AppTextStyle.secondaryColorMontserratW600S20,),
        TitleWidget(title: AppTexts.seeAll,textStyle: AppTextStyle.primaryColorMontserratW500S16,),
      ],
    );
  }
}
