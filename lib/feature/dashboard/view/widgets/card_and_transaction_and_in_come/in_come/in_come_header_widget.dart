import 'package:flutter/widgets.dart';

import '../../../../../../core/utilities/app_texts.dart';
import '../../all_expenses_and_quick_invoice/body_expenses/all_expenses_drop_down_widget.dart';

class InComeHeaderWidget extends StatelessWidget {
  const InComeHeaderWidget({super.key, required this.dropDownItems, required this.selectedValue, this.onChanged});
  final List<String> dropDownItems;
  final String selectedValue;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return AllExpensesDropDownWidget(
      onChanged: onChanged,
      dropDownItems: dropDownItems,
      selectedValue: selectedValue,
      text: AppTexts.income,
    );
  }
}
