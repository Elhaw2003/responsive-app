import 'package:flutter/material.dart';

class CustomThumbScrollbarWidget extends StatelessWidget {
  const CustomThumbScrollbarWidget(
      {super.key,
      required this.scrollController,
      required this.child,
      required this.scrollbarOrientation});
  final ScrollController scrollController;
  final Widget child;
  final ScrollbarOrientation scrollbarOrientation;
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        thumbVisibility: true,
        thickness: 5,
        radius: const Radius.circular(12),
        scrollbarOrientation: scrollbarOrientation,
        controller: scrollController,
        child: child
    );
  }
}
