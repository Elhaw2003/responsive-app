import 'package:flutter/material.dart';

import 'in_come_chart_widget.dart';
import 'in_come_details_widget.dart';

class InComeChartDetailsWidget extends StatelessWidget {
  const InComeChartDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
              child: InComeChartWidget()),
        ),
        Expanded(child: InComeDetailsWidget())
      ],
    );
  }
}