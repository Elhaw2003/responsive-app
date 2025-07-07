import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/title_widget.dart';

import '../../../../../../core/widgets/custom_text_field_widget.dart';

class TitleTextFieldWidget extends StatelessWidget {
  const TitleTextFieldWidget({super.key, required this.hint, required this.title});
  final String hint;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(title: title,),
        const SizedBox(height: 12,),
        CustomTextFieldWidget(hint: hint,)
      ],
    );
  }
}
