import 'package:flutter/material.dart';

import 'app_bar_theme.dart';
import 'colors.dart';
import 'e_navigation_bar_theme.dart';
import 'elevated_button_theme.dart';

class EAppTheme{

  static ThemeData lightTheme = ThemeData(

      useMaterial3: true,

      elevatedButtonTheme: ElevatedButtonThemes.lightElevatedButtonTheme,
    navigationBarTheme: ENavigationBarTheme.eLightNavigationBarThemeData,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: Colors.white,
    colorScheme:appColorScheme
  );
}

final ColorScheme appColorScheme = ColorScheme(
  brightness: Brightness.light,

  // Main Branding
  primary: AppColors.primary,
  onPrimary: AppColors.light, // Text/Icons on primary buttons

  secondary: AppColors.accentPrimary, // Using your Sky Blue as the accent
  onSecondary: AppColors.light,

  // Backgrounds
  surface: AppColors.backgroundPrimary, // Cards, TextFields, Sheets
  onSurface: AppColors.textPrimary,     // Main text on surfaces



  error: AppColors.error,
  onError: AppColors.light,

  outline: AppColors.borderSoft,
  onSurfaceVariant: AppColors.textSecondary, // Hint text and icons
);
