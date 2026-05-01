import 'package:flutter/material.dart';

import 'app_spacing.dart';
import 'colors.dart';

class ElevatedButtonThemes {
  static final ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: AppColors.primary,
          // minimumSize: const Size(double.infinity, AppRadius.xxl),

          foregroundColor: Colors.white,
          disabledForegroundColor: Colors.grey,
          maximumSize: const Size(double.infinity, AppRadius.xxl),
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(horizontal: AppRadius.lg),
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.sm),
          ),
        ),
      );
}
