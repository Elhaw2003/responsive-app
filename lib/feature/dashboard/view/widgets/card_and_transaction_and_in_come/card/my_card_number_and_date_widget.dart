import 'package:flutter/material.dart';

import '../../../../../../core/utilities/app_text_style.dart';
import '../../all_expenses_and_quick_invoice/quick_invoice/title_widget.dart';
class MyCardNumberAndDateWidget extends StatelessWidget {
  const MyCardNumberAndDateWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TitleWidget(
          title: "0918 8124 0042 8129",
          textStyle: AppTextStyle.whiteColorMontserratW600S24,
        ),
        TitleWidget(
          title: ("12/20 - 124"),
          textStyle: AppTextStyle.whiteColorMontserratW400S14
              .copyWith(fontSize: 16),
        ),
      ],
    );
  }
}
