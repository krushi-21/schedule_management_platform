import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColorString) {
    var hexColor = hexColorString;
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(String hexColor) : super(_getColorFromHex(hexColor));
}

class AppColors {
  AppColors();

  //static Color get primaryColor => HexColor("#EC615C");
  static Color get primaryColor => HexColor("#FFFFFF");
  static Color get h1textColor => HexColor("#212525");
  static Color get iconColor => HexColor("#88889D");
  static Color get h2textColor => HexColor("#FFFFFF");
  static Color get h3textColor => HexColor("#BCC1CD");
  static Color get greenColor => HexColor("#00664F");
  static Color get lightGreenColor => HexColor("#4DC591");
  static Color get lightBlueColor => HexColor("#8F98FF");
  static Color get card1Color => HexColor("#FF7648");
  static Color get card2Color => HexColor("#8F98FF");
  static Color get card3Color => HexColor("#FFC278");
  static Color get scheduleColor => HexColor("#FAF9F9");
}
