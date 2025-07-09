import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card/item_all_card_container_widget.dart';

import '../../../../../core/widgets/custom_background_container_widget.dart';

class ItemContainerSec3Widget extends StatelessWidget {
  const ItemContainerSec3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackgroundContainerWidget(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemAllCardContainerWidget(),
          ],
        )
    );
  }
}
