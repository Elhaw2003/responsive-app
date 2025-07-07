import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/setting_and_logout_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/user_info_list_tile_widget.dart';

import '../../../../../core/utilities/app_texts.dart';
import '../../../../../generated/assets.dart';
import '../../../models/item_drawer_model.dart';
import '../../../models/user_info_item_model.dart';
import 'item_drawer_list_view_widget.dart';

class CustomScrollViewDrawerWidget extends StatelessWidget {
  const CustomScrollViewDrawerWidget({super.key, required this.scrollController});
  final ScrollController scrollController;
  static const List<ItemDrawerModel> items = [
    ItemDrawerModel(title: AppTexts.dashboard, image: Assets.svgIconsDashboard),
    ItemDrawerModel(title: AppTexts.myTransaction, image: Assets.svgIconsMyTransaction),
    ItemDrawerModel(title: AppTexts.statistics, image: Assets.svgIconsStatistics),
    ItemDrawerModel(title: AppTexts.walletAccount, image: Assets.svgIconsWalletAccount),
    ItemDrawerModel(title: AppTexts.myInvestments, image: Assets.svgIconsMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTileWidget(
            userInfoItemModel: UserInfoItemModel(
                title: AppTexts.lekanOkeowo,
                subtitle: AppTexts.demoGmailCom,
                iconImage: Assets.svgIconsLogo
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 8,),
        ),
        const ItemDrawerListViewWidget(items: items),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: SizedBox(height: 20,)),
              SettingAndLogoutWidget(title: AppTexts.settingSystem, iconImage: Assets.svgIconsSetting2),
              SettingAndLogoutWidget(title: AppTexts.logoutAccount, iconImage: Assets.svgIconsLogout),
              SizedBox(height: 48,)
            ],
          ),
        )
      ],
    );
  }
}
