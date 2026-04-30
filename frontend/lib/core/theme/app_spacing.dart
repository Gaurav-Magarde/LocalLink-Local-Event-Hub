import 'package:flutter/material.dart';

class AppSpacing {
  static const double xss = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 40;
  static const double xxxl = 48;
  static const double x4l = 53;
  static const double x5l = 64;
  static const double x6l = 80;
  static const double x7l = 85;
}

class AppRadius {
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 64;
  static const double xxxl = 55;
  static const double full = 999;
}

class AppGaps {
  static const SizedBox xs = SizedBox(height: AppSpacing.xs);
  static const SizedBox sm = SizedBox(height: AppSpacing.sm);
  static const SizedBox md = SizedBox(height: AppSpacing.md);
  static const SizedBox lg = SizedBox(height: AppSpacing.lg);
  static const SizedBox xl = SizedBox(height: AppSpacing.xl);
  static const SizedBox xxl = SizedBox(height: AppSpacing.xxl);

  // Horizontal gaps
  static const SizedBox wXs = SizedBox(width: AppSpacing.xs);
  static const SizedBox wSm = SizedBox(width: AppSpacing.sm);
  static const SizedBox wMd = SizedBox(width: AppSpacing.md);
  static const SizedBox wLg = SizedBox(width: AppSpacing.lg);
  static const SizedBox wXl = SizedBox(width: AppSpacing.xl);
}

class AppButtonConfig {
  static const double height = 56;
  static const double radius = 32;
}


class AppDeviceCardConfig {
  static const double rightColumnWidth = 115;
  static const double signalIconSize = 18;
}

class AppInfoNoteConfig {
  static const double borderRadius = 29;
  static const double iconSize = 22;
}

class AppInstallationLocationConfig {
  static const double height = 67;
  static const double borderRadius = 29;
  static const double iconSize = 22;
}

class AppSuccessViewConfig {
  static const double topSpacing = 80;
  static const double circleSize = 140;
  static const double checkIconSize = 60;
  static const double largeSpacing = 40;
  static const double smallSpacing = 12;
  static const double bottomSpacing = 30;
  static const double statusCardRadius = 29;
  static const double buttonVerticalPadding = 18;
}

class AppSyncingViewConfig {
  static const double topSpacing = 120;
}

class AppAddDevicePageConfig {
  static const double actionIconContainerSize = 36;
  static const double actionIconSize = 18;
}

class AppScannerConfig {
  static const double containerRadius = 32;
}

class AppScannerOverlayConfig {
  static const double scanAreaFactor = 0.65;
  static const double borderRadius = 32;
  static const double borderWidth = 3;
  static const double cornerLength = 32;
  static const double overlayOpacity = 0.6;
}

class AppScannerControlsConfig {
  static const double bottomOffset = 80;
  static const double buttonSize = 56;
  static const double iconSize = 22;
  static const double gap = 32;
}

class AppQRPreviewConfig {
  static const double circleSize = 220;
  static const double iconSize = 80;
}

class AppCircleIconButtonConfig {
  static const double buttonSize = 44;
  static const double iconSize = 20;
  static const double backgroundOpacity = 0.15;
}

class AppNotificationButtonConfig {
  static const double buttonSize = 44;
  static const double iconSize = 20;

  static const double badgeMinSize = 18;
  static const double badgeFontSize = 10;
  static const double badgeOffset = 4;
}