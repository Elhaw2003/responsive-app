import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/body_expenses/drop_down_widget.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';

class AllExpensesDropDownWidget extends StatelessWidget {
  const AllExpensesDropDownWidget({super.key, required this.dropDownItems, required this.selectedValue, this.onChanged});
  final List<String> dropDownItems;
  final String selectedValue;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppTexts.allExpenses,
          style: AppTextStyle.secondaryColorMontserratW600S20,
        ),
        DropDownWidget(dropDownItems: dropDownItems, selectedValue: selectedValue,onChanged: onChanged,)
      ],
    );
  }
}
