import 'package:flutter/material.dart';

import 'appcolors.dart';

class AppTextStyles {
  AppTextStyles();

  static TextStyle get h1Textstyle => TextStyle(
        color: AppColors.h1textColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );

  static TextStyle get h2Textstyle => TextStyle(
        color: AppColors.h1textColor,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get cardTextstyle => TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get h3Textstyle => TextStyle(
        color: AppColors.h3textColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  static TextStyle get h4Textstyle => TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  static TextStyle get biologyTextstyle => TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w800,
        fontSize: 18,
      );
  static TextStyle get chapter1Textstyle => TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get teacherNameTextstyle => TextStyle(
        color: AppColors.h1textColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );

  // schedule page text style
  static TextStyle get dateh1Textstyle => TextStyle(
        color: AppColors.h1textColor,
        fontWeight: FontWeight.normal,
        fontSize: 44,
      );
  static TextStyle get scheduleh3Textstyle => TextStyle(
        color: AppColors.h3textColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get timeh2Textstyle => TextStyle(
        color: AppColors.h1textColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  static TextStyle get todayh2Textstyle => TextStyle(
        color: AppColors.lightGreenColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  static TextStyle get scheduleCardh1Textstyle => TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get scheduleCardh2Textstyle => TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
}
