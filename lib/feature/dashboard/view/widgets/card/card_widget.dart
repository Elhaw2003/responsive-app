import 'package:flutter/material.dart';
import 'item_container_sec3_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        ItemContainerSec3Widget(),
      ],
    );
  }
}
