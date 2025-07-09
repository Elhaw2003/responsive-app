import 'package:flutter/material.dart';

import '../../../../../../core/utilities/app_text_style.dart';
import '../../../../../../core/utilities/app_texts.dart';
import 'drop_down_widget.dart';

class AllExpensesDropDownWidget extends StatelessWidget {
  const AllExpensesDropDownWidget({super.key, required this.dropDownItems, required this.selectedValue, this.onChanged, required this.text});
  final List<String> dropDownItems;
  final String selectedValue;
  final String text;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyle.secondaryColorMontserratW600S20,
        ),
        DropDownWidget(dropDownItems: dropDownItems, selectedValue: selectedValue,onChanged: onChanged,)
      ],
    );
  }
}
