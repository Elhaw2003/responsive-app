import 'package:flutter/material.dart';
import 'package:responsive_app/core/widgets/custom_thumb_scrollbar_widget.dart';

import '../../../../../../generated/assets.dart';
import '../../../../models/user_info_item_model.dart';
import '../../drawer/user_info_list_tile_widget.dart';

class LatestTransactionItemListviewWidget extends StatefulWidget {
  const LatestTransactionItemListviewWidget({super.key});

  @override
  State<LatestTransactionItemListviewWidget> createState() =>
      _LatestTransactionItemListviewWidgetState();
}

class _LatestTransactionItemListviewWidgetState
    extends State<LatestTransactionItemListviewWidget> {
  final ScrollController scrollController = ScrollController();
  List<UserInfoItemModel> latestTransactionItems = [
    UserInfoItemModel(
        title: "Madrani Andi",
        iconImage: Assets.svgIconsIcon1,
        subtitle: "Madraniadi20@gmail"
    ),
    UserInfoItemModel(
        title: "Josua Nunito",
        iconImage: Assets.svgIconsIcon2,
        subtitle: "Josh Nunito@gmail.com@gmail"),
    UserInfoItemModel(
        title: "Madrani Andi",
        iconImage: Assets.svgIconsIcon1,
        subtitle: "Madraniadi20@gmail"),
    UserInfoItemModel(
        title: "Josua Nunito",
        iconImage: Assets.svgIconsIcon2,
        subtitle: "Josh Nunito@gmail.com@gmail"),
    UserInfoItemModel(
        title: "Madrani Andi",
        iconImage: Assets.svgIconsIcon1,
        subtitle: "Madraniadi20@gmail"),
    UserInfoItemModel(
        title: "Josua Nunito",
        iconImage: Assets.svgIconsIcon2,
        subtitle: "Josh Nunito@gmail.com@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomThumbScrollbarWidget(
        scrollController: scrollController,
        scrollbarOrientation: ScrollbarOrientation.bottom,
        child: SizedBox(
          height: 80,
          child: ListView.separated(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemCount: latestTransactionItems.length,
            itemBuilder: (context, index) {
              return IntrinsicWidth(
                child: UserInfoListTileWidget(
                  userInfoItemModel: latestTransactionItems[index],
                ),
              );
            },
          ),
        )
    );
  }
}
