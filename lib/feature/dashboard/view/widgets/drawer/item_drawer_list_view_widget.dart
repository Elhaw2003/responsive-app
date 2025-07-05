import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/item_drawer_model.dart';
import 'package:responsive_app/feature/dashboard/view/widgets/drawer/item_drawer_widget.dart';

class ItemDrawerListViewWidget extends StatefulWidget {
  const ItemDrawerListViewWidget({super.key, required this.items});
  final List<ItemDrawerModel> items;

  @override
  State<ItemDrawerListViewWidget> createState() => _ItemDrawerListViewWidgetState();
}
int activeIndex = 0;
class _ItemDrawerListViewWidgetState extends State<ItemDrawerListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 20,),
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
           onTap: (){
             if (activeIndex != index){
               setState(() {
                 activeIndex = index;
               });
             }
           },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: ItemDrawerWidget(
                  index: index,
                  activeIndex: activeIndex,
                  itemDrawerModel: widget.items[index]),
            ));
      },
    );
  }
}
