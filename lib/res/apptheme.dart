import 'package:flutter/material.dart';

import 'appcolors.dart';
import 'fonts.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: AppFonts.poppins,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      cardTheme: CardTheme(elevation: 1, margin: EdgeInsets.only()),
      accentColor: AppColors.primaryColor,
     
    );
  }
}