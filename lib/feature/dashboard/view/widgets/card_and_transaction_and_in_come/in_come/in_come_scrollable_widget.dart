import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card_and_transaction_and_in_come/in_come/in_come_widget.dart';

class InComeScrollableWidget extends StatelessWidget {
  const InComeScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: InComeWidget(),
    );
  }
}
