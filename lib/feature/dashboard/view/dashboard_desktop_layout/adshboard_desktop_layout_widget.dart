import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer_widget.dart';

class DashboardDesktopLayoutWidget extends StatelessWidget {
  const DashboardDesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: DrawerWidget()),
      ],
    );
  }
}
