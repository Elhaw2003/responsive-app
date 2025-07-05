import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/core/utilities/app_texts.dart';
import 'package:responsive_app/feature/dashboard/models/item_drawer_model.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/item_drawer_list_view_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/setting_and_logout_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/user_info_list_tile_widget.dart';
import 'package:responsive_app/generated/assets.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  static const List<ItemDrawerModel> items = [
    ItemDrawerModel(title: AppTexts.dashboard, image: Assets.svgIconsDashboard),
    ItemDrawerModel(title: AppTexts.myTransaction, image: Assets.svgIconsMyTransaction),
    ItemDrawerModel(title: AppTexts.statistics, image: Assets.svgIconsStatistics),
    ItemDrawerModel(title: AppTexts.walletAccount, image: Assets.svgIconsWalletAccount),
    ItemDrawerModel(title: AppTexts.myInvestments, image: Assets.svgIconsMyInvestments),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
         color: AppColors.whiteColor,
        child:  const CustomScrollView(
           slivers: [
             SliverToBoxAdapter(
               child: UserInfoListTileWidget(title: AppTexts.lekanOkeowo, subtitle: AppTexts.demoGmailCom, iconImage: Assets.svgIconsLogo),
             ),
             SliverToBoxAdapter(
               child: SizedBox(height: 8,),
             ),
             ItemDrawerListViewWidget(items: items),
             SliverFillRemaining(
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
        )
    );
  }
}