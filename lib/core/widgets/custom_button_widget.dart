import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.borderColor, required this.containerColor, required this.text, required this.textStyle});
  final Color borderColor;
  final Color containerColor;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor),
        color: containerColor,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
