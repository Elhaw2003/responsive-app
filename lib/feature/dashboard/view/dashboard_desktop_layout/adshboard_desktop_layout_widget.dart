import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card/card_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/drawer_widget.dart';
class DashboardDesktopLayoutWidget extends StatelessWidget {
  const DashboardDesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Expanded(child: DrawerWidget()),
        SizedBox(width: 32,),
        Expanded(
            flex: 2,
            child: AllExpensesAndQuickInvoiceWidget()
        ),
        SizedBox(width: 24,),
        Expanded(
            child: CardWidget()
        ),
      ],
    );
  }
}
