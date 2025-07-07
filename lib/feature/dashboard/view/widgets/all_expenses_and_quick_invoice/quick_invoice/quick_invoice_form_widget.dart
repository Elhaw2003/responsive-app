import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/utilities/app_text_style.dart';
import 'package:responsive_app/core/utilities/app_texts.dart';
import 'package:responsive_app/core/widgets/custom_background_container_widget.dart';
import 'package:responsive_app/core/widgets/custom_button_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/title_text_field_widget.dart';

class QuickInvoiceFormWidget extends StatelessWidget {
  const QuickInvoiceFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Expanded(
            child: TitleTextFieldWidget(
                title: AppTexts.customerName, hint: AppTexts.typeCustomerName),
          ),
          Expanded(
            child: TitleTextFieldWidget(
                title: AppTexts.customerEmail,
                hint: AppTexts.typeCustomerEmail),
          ),
        ]),
        SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
            child: TitleTextFieldWidget(
                title: AppTexts.itemName, hint: AppTexts.typeCustomerName),
          ),
          Expanded(
            child: TitleTextFieldWidget(
                title: AppTexts.itemMount, hint: AppTexts.usd),
          ),
        ]),
        SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
            child: CustomButtonWidget(
                borderColor: AppColors.whiteColor,
                containerColor: AppColors.whiteColor,
                text: AppTexts.addMoreDetails,
                textStyle: AppTextStyle.primaryColorMontserratW600S24.copyWith(fontSize: 18),
            ),
          ),
          Expanded(
            child: CustomButtonWidget(
                borderColor: AppColors.primaryColor,
                containerColor: AppColors.primaryColor,
                text: AppTexts.sendMoney,
                textStyle: AppTextStyle.whiteColorMontserratW600S16.copyWith(fontSize: 18),
            ),
          ),
        ]),
      ],
    );
  }
}
