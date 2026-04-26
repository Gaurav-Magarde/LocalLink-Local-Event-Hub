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
  primary: EColors.primary,
  onPrimary: EColors.light, // Text/Icons on primary buttons

  secondary: EColors.accentPrimary, // Using your Sky Blue as the accent
  onSecondary: EColors.light,

  // Backgrounds
  surface: EColors.backgroundPrimary, // Cards, TextFields, Sheets
  onSurface: EColors.textPrimary,     // Main text on surfaces



  error: EColors.error,
  onError: EColors.light,

  outline: EColors.borderSoft,
  onSurfaceVariant: EColors.textSecondary, // Hint text and icons
);
