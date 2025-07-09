import 'package:flutter/material.dart';
import 'package:responsive_app/core/widgets/custom_page_indicator_widget.dart';
import 'package:responsive_app/feature/dashboard/models/my_card_model.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/card/stack_my_card_widget.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../all_expenses_and_quick_invoice/quick_invoice/title_widget.dart';

class ItemAllCardContainerWidget extends StatefulWidget {
  const ItemAllCardContainerWidget({super.key});

  @override
  State<ItemAllCardContainerWidget> createState() => _ItemAllCardContainerWidgetState();
}

class _ItemAllCardContainerWidgetState extends State<ItemAllCardContainerWidget> {
  final PageController pageController = PageController();
  List<MyCardModel> myCards = [
    MyCardModel(title: "Name card", subtitle: "Syah Bandi", numCard: "0918 8124 0042 8129", date: "12/20", secureCode: "124", cardColor: AppColors.primaryColor),
    MyCardModel(title: "My card", subtitle: "Syah Bndi", numCard: "0918 7896 0042 8129", date: "11/30", secureCode: "657", cardColor: AppColors.secondaryColor),
    MyCardModel(title: "Your card", subtitle: "Syah Bandi", numCard: "0918 2109 0042 8129", date: "10/26", secureCode: "982", cardColor: AppColors.orangeColor)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(
            title: "My Card",
            textStyle: AppTextStyle.secondaryColorMontserratW600S20,
          ),
          const SizedBox(height: 20,),
          StackMyCardWidget(myCards: myCards,pageController: pageController,),
          const SizedBox(height: 19,),
          CustomPageIndicatorWidget(pageController: pageController, count: myCards.length)
        ],
    );
  }
}
