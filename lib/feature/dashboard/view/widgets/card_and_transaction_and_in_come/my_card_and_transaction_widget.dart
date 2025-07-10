import 'package:flutter/material.dart';
import 'package:responsive_app/core/widgets/custom_background_container_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/transaction_history_widget/transaction_history_widget.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/custom_divider_widget.dart';
import 'card/card_widget.dart';

class MyCardAndTransactionWidget extends StatelessWidget {
  const MyCardAndTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainerWidget(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardWidget(),
          CustomDividerWidget(color: AppColors.lightGreyColor, height: 40),
          TransactionHistoryWidget(),
        ],
      ),
    );
  }
}
