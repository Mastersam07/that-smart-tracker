import 'package:flutter/material.dart';
import 'package:smart_tracker/core/models/app_theme.dart';
import 'package:flutter/services.dart';
import 'package:smart_tracker/res/res.dart';

class AppThemes {
  static ThemeData main({
    bool isDark = false,
    Color primaryColor = AppColors.light100,
  }) {
    return ThemeData(
      fontFamily: 'Inter',
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: AppColors.light100,
      // backgroundColor: primaryColor,
      primarySwatch: AppColors.getMaterialColorFromColor(AppColors.green),
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: primaryColor,
          systemOverlayStyle: SystemUiOverlayStyle.light),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
          elevation: MaterialStateProperty.all<double>(0),
          textStyle: MaterialStateProperty.all<TextStyle>(AppStyles.button),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }

  static List<AppTheme> appThemeOptions = [
    AppTheme(
      mode: ThemeMode.light,
      title: 'Light',
      icon: Icons.brightness_5_rounded,
    ),
    AppTheme(
      mode: ThemeMode.dark,
      title: 'Dark',
      icon: Icons.brightness_2_rounded,
    ),
    AppTheme(
      mode: ThemeMode.system,
      title: 'System',
      icon: Icons.brightness_4_rounded,
    ),
  ];
}
