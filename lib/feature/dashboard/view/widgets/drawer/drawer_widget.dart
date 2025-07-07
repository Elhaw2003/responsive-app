import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/widgets/custom_thumb_scrollbar_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/custom_scroll_view_drawer_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Container(
      color: AppColors.whiteColor,
      child: CustomThumbScrollbarWidget(
          scrollController: scrollController,
          scrollbarOrientation: ScrollbarOrientation.right,
          child: CustomScrollViewDrawerWidget(scrollController: scrollController)
      ),
    );
  }
}
