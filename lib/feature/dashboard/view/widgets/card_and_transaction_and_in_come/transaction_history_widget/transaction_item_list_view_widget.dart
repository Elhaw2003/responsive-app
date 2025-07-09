import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/transaction_item_model.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/transaction_history_widget/transaction_item_list_tile_widget.dart';

class TransactionItemListViewWidget extends StatefulWidget {
  const TransactionItemListViewWidget({super.key});

  @override
  State<TransactionItemListViewWidget> createState() => _TransactionItemListViewWidgetState();
}

class _TransactionItemListViewWidgetState extends State<TransactionItemListViewWidget> {
  List<TransactionItemModel> transactionItems = [
    TransactionItemModel(title: "Cash Withdrawal", hour: "3:30 PM", date: "13 Apr, 2022 ", amount: "20,129", withDrawal: true),
    TransactionItemModel(title: "Cash Landing Page project", hour: "3:30 PM", date: "13 Apr, 2022 ", amount: "2,000", withDrawal: false),
    TransactionItemModel(title: "Juni Mobile App project", hour: "3:30 PM", date: "13 Apr, 2022 ", amount: "20,129", withDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactionItems.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12,),
      itemBuilder: (context, index) => TransactionItemListTileWidget(transactionItemModel: transactionItems[index]),
    );
  }
}
