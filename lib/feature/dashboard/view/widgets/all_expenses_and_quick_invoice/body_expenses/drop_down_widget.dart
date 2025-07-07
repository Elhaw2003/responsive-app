import 'package:flutter/material.dart';
import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_text_style.dart';
class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key, required this.dropDownItems, required this.selectedValue, this.onChanged});
  final List<String> dropDownItems;
  final String selectedValue;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      elevation: 0,
      padding: const EdgeInsets.all(12),
      dropdownColor: AppColors.whiteColor,
      value: selectedValue,
      style: AppTextStyle.secondaryColorMontserratW400S16,
      icon: Transform.rotate(
          angle: -1.57079633,
          child: const Icon(Icons.arrow_back_ios_new,color: AppColors.secondaryColor,size: 20,)),
      borderRadius: BorderRadius.circular(20),
      items: [
        ...dropDownItems.map((item){
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: AppTextStyle.secondaryColorMontserratW400S16,
            ),
          );
        }),
      ],
      onChanged:onChanged,
    );
  }
}
