import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/core/utilities/app_text_style.dart';
import 'package:responsive_app/core/utilities/app_texts.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/all_expenses_and_quick_invoice/quick_invoice/title_widget.dart';

import '../../../../../generated/assets.dart';

class ItemListTileMyCardWidget extends StatelessWidget {
  const ItemListTileMyCardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TitleWidget(title: AppTexts.nameCard,textStyle: AppTextStyle.whiteColorMontserratW400S14.copyWith(fontSize: 16),),
      subtitle: TitleWidget(title: AppTexts.syahBandi,textStyle: AppTextStyle.whiteColorMontserratW600S24.copyWith(fontSize: 20,fontWeight: FontWeight.w500),),
      trailing: SvgPicture.asset(Assets.svgIconsGallery),
    );
  }
}
