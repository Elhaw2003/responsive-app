import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/widgets/custom_divider_widget.dart';
import 'package:responsive_app/core/widgets/custom_thumb_scrollbar_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/in_come_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/transaction_history_widget/transaction_history_widget.dart';

import '../../../../../core/widgets/custom_background_container_widget.dart';
import 'card/card_widget.dart';

class CardAndTransactionAndInComeWidget extends StatefulWidget {
  const CardAndTransactionAndInComeWidget({super.key});

  @override
  State<CardAndTransactionAndInComeWidget> createState() => _CardAndTransactionAndInComeWidgetState();
}
ScrollController scrollController = ScrollController();
class _CardAndTransactionAndInComeWidgetState extends State<CardAndTransactionAndInComeWidget> {
  @override
  Widget build(BuildContext context) {
    return  CustomThumbScrollbarWidget(
      scrollbarOrientation: ScrollbarOrientation.right,
      scrollController: scrollController,
      child: SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            SizedBox(height: 40,),
            CustomBackgroundContainerWidget(
                padding: 24,
                child: Column(
                  children: [
                    CardWidget(),
                    CustomDividerWidget(color: AppColors.lightGreyColor, height: 40),
                    TransactionHistoryWidget(),
                    SizedBox(height: 20,),
                    InComeWidget(),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
