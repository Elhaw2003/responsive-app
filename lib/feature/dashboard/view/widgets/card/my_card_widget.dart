import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/models/my_card_model.dart';
import '../../../../../generated/assets.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key, required this.myCardModel});
  final MyCardModel  myCardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: myCardModel.cardColor,
          image: const DecorationImage(
              image: AssetImage(Assets.imagesMyCard),
              fit: BoxFit.fill
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
