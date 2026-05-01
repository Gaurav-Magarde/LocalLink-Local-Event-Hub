import 'package:flutter/material.dart';

class AppColors {
  // ==========================================
  // YOUR VARIABLES (Mapped to the UI Image)
  // ==========================================
  const AppColors._();
  // The vibrant pink/magenta used for the main "Buy Ticket" and "Place Order" buttons
  static const Color primary = Color(0xFFFF007A);

  // A slightly darker shade of the pink for when the button is pressed
  static const Color primaryDark = Color(0xFFCC0062);

  // Soft light grey for secondary elements and backgrounds
  static const Color secondary = Color(0xFFF5F5F5);

  // Accent color aligned with the primary pink
  static const Color accentPrimary = Color(0xFFFF007A);

  // Pure white, used for the inside of Cards, Tickets, and bottom sheets
  static const Color backgroundPrimary = Color(0xFFFFFFFF);

  // The clean, very light grey background of the entire screen (Scaffold)
  static const Color background = Color(0xFFFAFAFA);

  // Deep charcoal/almost black for the main headings ("Party with friends...", etc.)
  static const Color textPrimary = Color(0xFF1A1A1A);

  // Soft grey for the hint text, dates, descriptions, and unchecked radio buttons
  static const Color textSecondary = Color(0xFF8E8E93);

  // Your legacy variables
  static const Color light = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFF000000);

  // ==========================================
  // HELPFUL EXTRAS FOR FORMS
  // ==========================================

  // Very light grey for un-tapped TextField borders and subtle dividers
  static const Color borderSoft = Color(0xFFE5E5EA);

  // Success Green from the "Congratulations" checkmark icon
  static const Color mainGreen = Color(0xFF34C759);

  ///---[DARK_Primary]------
  static const Color darkPrimary = Color(0xFF1C1C1E); // Dark mode surface

  static const Color darkPrimaryDark = Color(0xFF000000); // Darker dark mode

  static const Color darkBackground = Color(0xFF121212); // dark background

  static const Color card = Color(0xFFFFFFFF); // Card bg
  static const Color darkCard = Color(0xFF1C1C1E); // Card bg

  static const Color darkTextPrimary = Color(0xFFFFFFFF); // Dark text -- Same for icons [DarkMode]

  static const Color darkTextSecondary = Color(0xFFEBEBF5); // Same for scroll bar  [DarkMode]
  static const Color whitetext = Color(0xFFFFFFFF);
  static const Color divider = Color(0xFFF2F2F7);

  static const Color pendingBtn = Color(0xFFFF9F0A);
  static const Color openBtn = Color(0xFFFF375F);
  static const Color textFieldBg = Color(0xFFF2F2F7);
  static const Color darkTextFieldBg = Color(0xFF2C2C2E);

  static const Color high = Color(0xFFFF453A); // High priority

  static const Color inProgressBtn = Color(0xFFFF9F0A); // progress btn

  static const Color closed = Color(0xFF8E8E93); // closed btn

  static const Color addBtn = Color(0xFFFF007A); // Using primary pink

  static const Color assignedbtn = Color(0xFFE5E5EA); // assigned btn

  static const Color success = Color(0xFF34C759);
  static const Color warning = Color(0xFFFFCC00);
  static const Color error = Color(0xFFFF3B30);
  static const Color linkButton = Color(0xFFFF007A);
  static const Color badgeText = Color(0xFFFFFFFF);
  static const Color quickActionTile = Color(0xFFF2F2F7);
  static const Color scrollTrack = Color(0xFFE5E5EA);
  static const Color scrollThumb = Color(0xFFC7C7CC);

  static const Color scannerBackground = Color(0xFF000000);
  static const Color deviceCardBackground = Color(0xFF1C1C1E);
  static const Color signalExcellent = Color(0xFF34C759);

  // ─────────── ADDED (Do Not Remove Existing) ───────────

  /// White main container
  static const Color surfaceWhite = Color(0xFFFFFFFF);

  /// Adapted to a soft pink container to match the theme instead of mint
  static const Color mintContainer = Color(0xFFFFF0F6);

  /// Light pink surface
  static const Color mintLight = Color(0xFFFFF5F9);

  /// Info container (neutral grey for this theme)
  static const Color infoBackground = Color(0xFFF2F2F7);
  static const Color darkInfoBackground = Color(0xFF2C2C2E);

  /// Info text & icon
  static const Color infoText = Color(0xFF1A1A1A);

  // ────── ADDITIONS FOR DASHBOARD (Harmonized to Pink Theme) ──────
  // Chart Colors
  static const Color chartActiveBar = Color(0xFFFF007A);
  static const Color chartInactiveBar = Color(0xFFFFB3D6);
  static const Color chartDivider = Color(0xFFE5E5EA);
  static const Color chartYAxisText = Color(0xFF8E8E93);
  static const Color chartOceanBlue = Color(0xFFFF007A); // Mapped to primary
  static const Color chartSkyBlue = Color(0xFFFF66B2); // Mapped to lighter pink

  // Chips
  static const Color chipBackground = Color(0xFFF2F2F7);
  static const Color chipSelected = Color(0xFFFF007A);
  static const Color chipTextInactive = Color(0xFF8E8E93);
  static const Color chipTextActive = Color(0xFFFFFFFF);

  // Power History Line Colors (Pink/Purple gradients)
  static const Color powerHistoryActivePower = Color(0xFFFF007A);
  static const Color powerHistoryPhase1 = Color(0xFFFF66B2);
  static const Color powerHistoryPhase2 = Color(0xFFFF99CC);
  static const Color powerHistoryPhase3 = Color(0xFFFFCCE5);

  // Donut chart legend
  static const Color legendValueText = Color(0xFF8E8E93);

  // System Status Card
  static const Color systemCardDark = Color(0xFF1C1C1E);
  static const Color systemLiveGreen = Color(0xFF34C759);

  // Live Metrics
  static const Color metricIconOrange = Color(0xFFFF9F0A);
  static const Color metricIconBlue = Color(0xFFFF007A);

  // System Alerts
  static const Color alertRedBg = Color(0xFFFFE5E5);
  static const Color alertRedBorder = Color(0xFFFF3B30);
  static const Color alertYellowBg = Color(0xFFFFF8E5);
  static const Color alertYellowBorder = Color(0xFFFFCC00);

  // Connected Meters
  static const Color metersIconBg = Color(0xFFFFF0F6);
  static const Color metersIcon = Color(0xFFFF007A);

  // Intensity / Status Colors
  static const Color navy = Color(0xFF1A1A1A);
  static const Color deepTeal = Color(0xFF34C759);
  static const Color deepEmerald = Color(0xFF248A3D);
  static const Color deepAmber = Color(0xFFFF9F0A);
  static const Color deepRed = Color(0xFFFF3B30);
  static const Color slate = Color(0xFF8E8E93);

  // Donut Chart - Active Power Phases
  static const Color donutPowerA = Color(0xFFFF007A);
  static const Color donutPowerB = Color(0xFFFF66B2);
  static const Color donutPowerC = Color(0xFFFFB3D6);
  static const Color donutDefault = Color(0xFFF2F2F7);

  // Dashboard Color Scheme Extensions
  static const Color dashboardDivider = chartDivider;
  static const Color dashboardSecondaryText = chartYAxisText;
  static const Color dashboardCardBg = chartOceanBlue;
  static const Color dashboardChartBg = chartSkyBlue;
}