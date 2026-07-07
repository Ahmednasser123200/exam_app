import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppColorScheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.lightGrey,
    onSecondary: AppColors.black,
    error: AppColors.error,
    onError: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.black,
    outline: AppColors.grey,
  );
}
