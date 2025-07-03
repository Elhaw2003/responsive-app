import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: Container(
                width: 200,
                height: 500,
                color: Colors.red,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
//scale factor
//responsive font size
// get (min , max ) function
double getResponsiveFontSize(BuildContext context,{required double fontSize}){
  double responsiveFontSize = fontSize * getScaleFactor(context);
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
double getScaleFactor(BuildContext context,){
  double width = MediaQuery.sizeOf(context).width;
  if(width < 600){
    return width / 400 ;
  }
  else if(width < 900){
    return width / 700;
  }
  else{
    return width / 1000;
  }
}