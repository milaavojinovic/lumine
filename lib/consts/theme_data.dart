import 'package:flutter/material.dart';
import 'package:lumine/consts/app_colors.dart';

class Styles {
  static ThemeData themeData({
    required bool isDarkTheme,
    required BuildContext context,
  }) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? AppColors.darkScaffoldColor
          : AppColors.lightScaffoldColor,

      cardColor: isDarkTheme
          ? AppColors.darkCardColor
          : AppColors.lightCardColor,

      primaryColor: isDarkTheme
          ? AppColors.darkPrimary
          : AppColors.lightPrimary,

      brightness: isDarkTheme ? Brightness.dark : Brightness.light,

      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: isDarkTheme
              ? AppColors.darkPrimary
              : AppColors.lightPrimary,
        ),
        titleTextStyle: TextStyle(
          color: isDarkTheme
              ? AppColors.darkText
              : AppColors.lightText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),

      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: isDarkTheme
              ? AppColors.darkText
              : AppColors.lightText,
        ),
        bodyMedium: TextStyle(
          color: isDarkTheme
              ? AppColors.darkSecondaryText
              : AppColors.lightSecondaryText,
        ),
      ),

      dividerColor: isDarkTheme
          ? AppColors.darkBorder
          : AppColors.lightBorder,
    );
  }
}
