import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/widgets/custom_layout_widget.dart';
import 'package:responsive_app/feature/dashboard/view/dashboard_desktop_layout/adshboard_desktop_layout_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScaffoldColor,
      body: CustomLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayoutWidget(),
      ),
    );
  }
}
