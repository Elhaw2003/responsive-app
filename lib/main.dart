import 'package:flutter/material.dart';
import 'package:responsive_app/feature/dashboard/view/dashboard_screen.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
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