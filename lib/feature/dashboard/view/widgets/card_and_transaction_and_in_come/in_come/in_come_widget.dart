import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_texts.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/body_expenses/all_expenses_drop_down_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/in_come_header_widget.dart';

import '../../../../../../core/utilities/app_text_style.dart';

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
    return Column(
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

    ]);
  }
}
