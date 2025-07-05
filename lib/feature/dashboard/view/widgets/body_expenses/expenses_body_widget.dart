import 'package:flutter/material.dart';
import 'package:responsive_app/core/utilities/app_colors.dart';
import 'package:responsive_app/feature/dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/body_expenses/all_expenses_drop_down_widget.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/body_expenses/all_expenses_item_container_widget.dart';
import 'package:responsive_app/generated/assets.dart';
class ExpensesBodyWidget extends StatefulWidget {
  const ExpensesBodyWidget({super.key});
  @override
  State<ExpensesBodyWidget> createState() => _ExpensesBodyWidgetState();
}
String selectedValue = 'Yearly';
List<String> dropDownItems = ['Yearly','Monthly','Weekly','Daily'];
int activeIndex = 0;
List<AllExpensesItemModel> allExpensesItems = [
  AllExpensesItemModel(title: "Balance", iconImage: Assets.svgIconsBalance, date: "April 2022", price: "20,129"),
  AllExpensesItemModel(title: "Income", iconImage: Assets.svgIconsInCome, date: "April 2022", price: "20,129"),
  AllExpensesItemModel(title: "Expenses", iconImage: Assets.svgIconsExpenses, date: "April 2022", price: "20,129"),
];
class _ExpensesBodyWidgetState extends State<ExpensesBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          AllExpensesDropDownWidget(dropDownItems: dropDownItems, selectedValue: selectedValue,onChanged: (v){
           setState(() {
             selectedValue = v.toString();
           });
         },),
          const SizedBox(height: 16,),
          Row(
            children: allExpensesItems.asMap().entries.map((e){
              int index = e.key;
              var item = e.value;
              if(index == 1){
                return  Expanded(
                    child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16)
                      ,child: AllExpensesItemContainerWidget(
                        allExpensesItemModel: item,
                        activeIndex: activeIndex,
                        index: index,
                        onTap: (){
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        ),
                    ),
                );
              }else{
                return  Expanded(child: AllExpensesItemContainerWidget(
                  allExpensesItemModel: item,
                  activeIndex: activeIndex,
                  index: index,
                  onTap: (){
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ));
              }
            }).toList(),
          )
        ],
      ),
    );
  }
}