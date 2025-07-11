import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/dashboard_mobile_layout/widgets/dashboard_mobile_body.dart';
import '../widgets/drawer/drawer_widget.dart';

class DashboardTabletLayoutWidget extends StatelessWidget {
  const DashboardTabletLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children:  [
        Expanded(child: DrawerWidget()),
        SizedBox(width: 32,),
        Expanded(
            flex:3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashboardMobileBody(),
            )
        ),
        SizedBox(width: 32,),
      ],
    );
  }
}
