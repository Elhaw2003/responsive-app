import 'package:flutter/material.dart';
import 'package:responsive_app/core/widgets/custom_background_container_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/in_come_chart_details_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/in_come_header_widget.dart';

class InComeWidget extends StatefulWidget {
  const InComeWidget({super.key});

  @override
  State<InComeWidget> createState() => _InComeWidgetState();
}

String selectedValue = 'Yearly';
List<String> dropDownItems = ['Yearly', 'Monthly', 'Weekly', 'Daily'];
int activeIndex = 0;

class _InComeWidgetState extends State<InComeWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainerWidget(
      padding: 20,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                InComeHeaderWidget(
                   onChanged: (v) {
                     setState(() {
                       selectedValue = v.toString();
                     });
                   },
                    dropDownItems: dropDownItems, selectedValue: selectedValue),
                const SizedBox(height: 15,),
                const InComeChartDetailsWidget(),
        ]),
      ),
    );
  }
}
