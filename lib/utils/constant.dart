import 'package:flutter/material.dart';

class Constant{
  /// font size
  static const double smallFont = 10;
  static const double mSmallFont = 12;
  static const double mediumFont = 15;
  static const double largeFont = 20;
  static const double xLargeFont = 25;
  static const double xxLargeFont = 30;
  static const double xxxLargeFont = 35;

  ///common text style
  static TextStyle commonTextStyle(double fontSize){
    return TextStyle(
      fontSize: fontSize,
    );
  }

  ///text style
  static TextStyle smallTextStyle(){
    return commonTextStyle(smallFont);
  }

  static TextStyle mSmallTextStyle(){
    return commonTextStyle(mSmallFont);
  }

  static TextStyle mediumTextStyle(){
    return commonTextStyle(mediumFont);
  }

  static TextStyle largeTextStyle(){
    return commonTextStyle(largeFont);
  }

  static TextStyle xLargeTextStyle(){
    return commonTextStyle(xLargeFont);
  }

  static TextStyle xxLargeTextStyle(){
    return commonTextStyle(xxLargeFont);
  }

  static TextStyle xxxLargeTextStyle(){
    return commonTextStyle(xxxLargeFont);
  }

  ///radius
  static const double textFieldRadius = 10;

  ///padding
  static const double padding = 20;
  static const double paddingHalf = 10;
  static const double paddingHalfHalf = 5;
  static const double paddingHalfMid = 15;
  static const double paddingDouble = 40;
  static const double paddingDoubleMid = 30;
  static const double paddingDoubleMidHalf = 25;
  static const double padding2x = 50;

  ///height box
  static const double height10 = 10;
  static const double height20 = 20;
  static const double height30 = 30;
  static const double height40 = 40;
  static const double height50 = 50;

}