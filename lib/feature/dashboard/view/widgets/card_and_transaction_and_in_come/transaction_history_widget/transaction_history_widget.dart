import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/transaction_history_widget/transaction_history_header_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/transaction_history_widget/transaction_item_list_view_widget.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeaderWidget(),
        SizedBox(height: 20,),
        TransactionItemListViewWidget(),
        SizedBox(height: 20,),
      ]
    );
  }
}
