import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicatorWidget extends StatelessWidget {
  const CustomPageIndicatorWidget({super.key, required this.pageController, required this.count});
  final PageController pageController;
  final int count;
  @override
  Widget build(BuildContext context) {
    return   SmoothPageIndicator(
      controller: pageController,
      count:  count,
      axisDirection: Axis.horizontal,
      effect:  const ExpandingDotsEffect(
          spacing:  8.0,
          radius:  8.0,
          dotWidth:  8.0,
          dotHeight:  8.0,
          dotColor:  AppColors.greyColor,
          activeDotColor:  AppColors.primaryColor
      ),
    ) ;
  }
}
