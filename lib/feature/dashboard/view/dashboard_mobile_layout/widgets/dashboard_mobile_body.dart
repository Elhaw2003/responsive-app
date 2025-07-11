import 'package:flutter/material.dart';

import '../../widgets/all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_widget.dart';
import '../../widgets/card_and_transaction_and_in_come/card_and_transaction_and_in_come_widget.dart';

class DashboardMobileBody extends StatelessWidget {
  const DashboardMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceWidget(),
          CardAndTransactionAndInComeWidget(),
        ],
      ),
    );
  }
}
