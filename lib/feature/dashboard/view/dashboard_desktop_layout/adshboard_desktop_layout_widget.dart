import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/drawer_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/body_expenses/expenses_body_widget.dart';

class DashboardDesktopLayoutWidget extends StatelessWidget {
  const DashboardDesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: DrawerWidget()),
        SizedBox(width: 32,),
        Expanded(
            flex: 2,
            child: ExpensesBodyWidget()
        )
      ],
    );
  }
}
