import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/card_and_transaction_and_in_come_widget.dart';

class CardAndTransactionAndInComeScrollableWidget extends StatelessWidget {
  const CardAndTransactionAndInComeScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CardAndTransactionAndInComeWidget(),
    );
  }
}
