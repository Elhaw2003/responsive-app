import 'package:flutter/material.dart';

import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_text_style.dart';
import '../../../../../../core/utilities/app_texts.dart';

class QuickInvoiceAndAddIconWidget extends StatelessWidget {
  const QuickInvoiceAndAddIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppTexts.quickInvoice,style: AppTextStyle.secondaryColorMontserratW600S20,),
        const Spacer(),
        const Icon(Icons.add,color: AppColors.primaryColor,)
      ],
    );
  }
}
