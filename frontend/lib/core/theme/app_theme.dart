import 'package:flutter/material.dart';

import 'app_font.dart';
import 'app_spacing.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme(bool isDark) {
    return ThemeData(
      useMaterial3: true,

      // ────── PROPER COLOR SCHEME ──────
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,

        primary: isDark ? AppColors.darkPrimaryDark :AppColors.primary,
        onPrimary: isDark ? AppColors.darkTextPrimary : AppColors.whitetext,
        primaryFixedDim: isDark ? AppColors.darkTextSecondary : AppColors.textSecondary,

        secondary: isDark ? AppColors.darkPrimary : AppColors.primaryDark,
        onSecondary: isDark ? AppColors.textPrimary : AppColors.whitetext,
        secondaryContainer: isDark ? AppColors.darkCard : AppColors.textFieldBg,

        tertiary: AppColors.addBtn,
        onTertiary: AppColors.inProgressBtn,

        // 🔹 WHITE MAIN CONTAINER
        surface: isDark? AppColors.darkPrimary :AppColors.surfaceWhite,
        onSurface: isDark? AppColors.darkTextPrimary :  AppColors.textPrimary,
        // onSurfaceDim: AppColors.textSecondary,

        // 🔹 MINT CONTAINER
        surfaceContainer: isDark ? AppColors.darkCard : AppColors.card,

        // 🔹 LIGHT MINT (inputs / small cards)
        surfaceContainerLow: isDark ? AppColors.darkPrimary: AppColors.mintLight,
        onSurfaceVariant: isDark ? AppColors.darkTextSecondary : AppColors.textSecondary,

        error: AppColors.error,
        onError: AppColors.whitetext,

        shadow: AppColors.divider,
        // 🔹 DEVICE CARD (dark)
        primaryContainer: AppColors.deviceCardBackground,
        onPrimaryContainer: AppColors.whitetext,

        // 🔹 INFO (blue box)
        tertiaryContainer: isDark ? AppColors.darkInfoBackground : AppColors.infoBackground,
        onTertiaryContainer: isDark? Color(0xFFF1FFF3) :  AppColors.infoText,
      ),

      // ────── SCAFFOLD ──────
      scaffoldBackgroundColor: isDark ? AppColors.darkPrimary : AppColors.primary,

      // ────── NAV BAR ──────
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: isDark ? AppColors.darkTextFieldBg : AppColors.textFieldBg,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: isDark ? AppColors.darkPrimaryDark : AppColors.primaryDark,
        unselectedItemColor: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),

      // ────── APP BAR ──────
      appBarTheme: AppBarTheme(
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: AppColors.whitetext),
        backgroundColor: isDark ? AppColors.darkPrimaryDark : AppColors.primary,
        titleTextStyle: AppTypography.h2,
        centerTitle: true,
      ),

      // ────── BUTTONS ──────
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          textStyle: AppTypography.button.copyWith(
            fontSize: AppTypography.caption.fontSize,
          ),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.textFieldBg,
          foregroundColor: AppColors.textPrimary,
          textStyle: AppTypography.button,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor:isDark ? AppColors.mainGreen : AppColors.primary,
          foregroundColor:isDark ? AppColors.textPrimary : AppColors.whitetext,
          textStyle: AppTypography.button,
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: Color(0xFFFFFAEB), // Light orange bg
        labelStyle: TextStyle(
          color: Color(0xFFB54708), // Dark orange text
          fontWeight: FontWeight.w600,
          // Note: Add fontSize/letterSpacing here if you need to strictly match labelSmall
        ),
        side: BorderSide(
          color: Color(0xFFFEDF89), // Orange border
        ),
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(
          horizontal: AppSpacing.md, // Ensure AppSpacing is in scope
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),

      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          padding: EdgeInsets.all(AppSpacing.sm + 2),
          iconSize: AppSpacing.lg,
        ),
      ),
      // ────── INPUT ──────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor:  AppColors.textFieldBg,
        hintStyle: TextStyle(color: AppColors.primary),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: AppSpacing.sm,
          horizontal: AppSpacing.md,
        ),
        border: OutlineInputBorder(
          gapPadding: AppSpacing.xss,
          borderRadius: BorderRadius.circular(AppRadius.xl),
          borderSide: BorderSide.none,
        ),
      ),

      // ────── TEXT ──────
      textTheme: TextTheme(
        headlineLarge: AppTypography.h0,
        titleLarge: AppTypography.h1,
        titleMedium: AppTypography.h2,
        titleSmall: AppTypography.h3,
        bodyMedium: AppTypography.body,
        bodySmall: AppTypography.h4,
        displayLarge: AppTypography.devicesTitle,
        bodyLarge: AppTypography.devicesSubtitle,
        labelMedium: AppTypography.messages,
      ).apply(
        displayColor: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
        bodyColor: isDark ? AppColors.darkTextSecondary : AppColors.textSecondary,
      ),

      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

extension ColorSchemeDashboardExt on ColorScheme {
  // Alerts
  Color get alertRedBg => AppColors.alertRedBg;
  Color get alertRedBorder => AppColors.alertRedBorder;
  Color get alertYellowBg => AppColors.alertYellowBg;
  Color get alertYellowBorder => AppColors.alertYellowBorder;

  // System Status
  Color get systemCardDark => AppColors.systemCardDark;
  Color get systemLiveGreen => AppColors.systemLiveGreen;

  // Chips
  Color get chipTextInactive => AppColors.chipTextInactive;

  // Connected Meters
  Color get metersIconBg => AppColors.metersIconBg;
  Color get metersIcon => AppColors.metersIcon;

  // Meter Intensity/Status
  Color get navy => AppColors.navy;
  Color get deepTeal => AppColors.deepTeal;
  Color get deepEmerald => AppColors.deepEmerald;
  Color get deepAmber => AppColors.deepAmber;
  Color get deepRed => AppColors.deepRed;
  Color get slate => AppColors.slate;

  // Donut Chart
  Color get donutPowerA => AppColors.donutPowerA;
  Color get donutPowerB => AppColors.donutPowerB;
  Color get donutPowerC => AppColors.donutPowerC;
  Color get donutDefault => AppColors.donutDefault;

  // Dashboard Chart Colors (resolve conflicts)
  Color get chartDivider => AppColors.dashboardDivider;
  Color get chartYAxisText => AppColors.dashboardSecondaryText;
  Color get chartPrimaryBg => AppColors.dashboardCardBg;
  Color get chartSecondaryBg => AppColors.dashboardChartBg;
}
