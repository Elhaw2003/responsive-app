import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../../models/my_card_model.dart';
import 'my_card_widget.dart';

class MyCardExpandablePageViewWidget extends StatelessWidget {
  const MyCardExpandablePageViewWidget({super.key, required this.myCards, required this.pageController});
  final List<MyCardModel> myCards ;
  final PageController pageController ;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
        animationCurve: Curves.linearToEaseOut,
        scrollDirection: Axis.horizontal,
        animationDuration: const Duration(milliseconds: 500),
        children: myCards.map(
                (e) {
              return MyCardWidget(
                myCardModel: e,
              );
            }
        ).toList()
    );
  }
}
