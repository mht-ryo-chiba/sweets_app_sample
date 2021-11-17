import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_colors.dart';

class AppTheme {
  ThemeData style() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
      ),
      fontFamily: 'Noto Sans JP',
      brightness: Brightness.light,
    );
  }
}
