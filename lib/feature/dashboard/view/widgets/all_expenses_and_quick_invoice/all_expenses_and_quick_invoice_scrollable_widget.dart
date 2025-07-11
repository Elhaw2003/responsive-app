import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_widget.dart';

class AllExpensesAndQuickInvoiceScrollableWidget extends StatelessWidget {
  const AllExpensesAndQuickInvoiceScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AllExpensesAndQuickInvoiceWidget(),
    );
  }
}
