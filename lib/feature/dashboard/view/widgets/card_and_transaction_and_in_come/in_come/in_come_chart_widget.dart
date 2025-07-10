import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';

class InComeChartWidget extends StatefulWidget {
  const InComeChartWidget({super.key});

  @override
  State<InComeChartWidget> createState() => _InComeChartWidgetState();
}

class _InComeChartWidgetState extends State<InComeChartWidget> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
        PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            setState(() {
              touchedIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          }),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            showTitle: false,
            color: AppColors.milkColor,
            radius: touchedIndex == 0 ? 40 : 30,
            value: 22),
        PieChartSectionData(
            showTitle: false,
            color: AppColors.secondaryColor,
            radius: touchedIndex == 1 ? 40 : 30,
            value: 20),
        PieChartSectionData(
            showTitle: false,
            color: AppColors.primaryColor,
            radius: touchedIndex == 2 ? 40 : 30,
            value: 25),
        PieChartSectionData(
            showTitle: false,
            color: AppColors.darkBlueColor,
            radius: touchedIndex == 3 ? 40 : 30,
            value: 40),
      ],
    ));
  }
}
