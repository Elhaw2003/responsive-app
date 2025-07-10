import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/in_come_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/my_card_and_transaction_widget.dart';
class CardAndTransactionAndInComeWidget extends StatelessWidget {
  const CardAndTransactionAndInComeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 40,),
        ),
        SliverToBoxAdapter(
          child: MyCardAndTransactionWidget(),
        ),
        SliverToBoxAdapter(
          child:  SizedBox(height: 20,),
        ),
        SliverFillRemaining(
          child: InComeWidget(),
        )
      ],
    );
  }
}