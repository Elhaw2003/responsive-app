import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/body_expenses/expenses_body_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/quick_invoice_body_widget.dart';

class AllExpensesAndQuickInvoiceWidget extends StatelessWidget {
  const AllExpensesAndQuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40,),
          ExpensesBodyWidget(),
          SizedBox(height: 34,),
          QuickInvoiceBodyWidget(),
          SizedBox(height: 32,),
        ],
      ),
    );
  }
}
