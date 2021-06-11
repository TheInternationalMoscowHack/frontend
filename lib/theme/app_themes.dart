import 'package:flutter/material.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class AppThemes {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.bigWhite,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // selectedItemColor: AppColors.grayMain,
        ),
    inputDecorationTheme: InputDecorationTheme(
      // fillColor: AppColors.bgGray1,
      filled: true,
      // labelStyle: AppTextStyles.paragraph2.copyWith(color: AppColors.gray50),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
  );

  const AppThemes._();
}
