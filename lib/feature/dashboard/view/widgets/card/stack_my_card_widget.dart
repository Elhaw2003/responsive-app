import 'package:flutter/material.dart';

import '../../../models/my_card_model.dart';
import 'item_list_tile_my_card_widget.dart';
import 'my_card_expandable_page_view_widget.dart';
import 'my_card_number_and_date_widget.dart';

class StackMyCardWidget extends StatelessWidget {
  const StackMyCardWidget({super.key, required this.myCards, required this.pageController});
  final List<MyCardModel> myCards ;
  final PageController pageController ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        MyCardExpandablePageViewWidget(
          pageController: pageController,
          myCards: myCards,
        ),
        const Positioned(
            top: 10,
            right: 20,
            left: 10,
            child: ItemListTileMyCardWidget()
        ),
        const Positioned(
          bottom: 15,
          right: 15,
          child: MyCardNumberAndDateWidget(),
        ),
      ],
    );
  }
}
