import 'package:flutter/material.dart';
import 'package:responsive_app/core/widgets/custom_background_container_widget.dart';
import 'package:responsive_app/core/widgets/custom_divider_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/quick_invoice_form_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/title_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/quick_invoice_and_add_icon_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/latest_transaction_item_listview_widget.dart';
import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_texts.dart';
class QuickInvoiceBodyWidget extends StatelessWidget {
  const QuickInvoiceBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return   const CustomBackgroundContainerWidget(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            QuickInvoiceAndAddIconWidget(),
            SizedBox(height: 24,),
            TitleWidget(title: AppTexts.latestTransaction,),
            SizedBox(height: 12,),
            LatestTransactionItemListviewWidget(),
            CustomDividerWidget(color: AppColors.lightGreyColor, height: 48),
            QuickInvoiceFormWidget()
          ],
        )
    );
  }
}
