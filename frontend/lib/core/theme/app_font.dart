import 'package:flutter/material.dart';

class AppTypography {
  static const String font = 'Poppins';

  ///Colors will be provided into the App theme acc to selected theme mode
  static const TextStyle h0 = TextStyle(
    fontFamily: font,
    fontSize: 32, // bigger than h1
    fontWeight: FontWeight.w600,
    // color: AppColors.textPrimary,
  );

  // Headings
  static const TextStyle h1 = TextStyle(
    fontFamily: font,
    fontSize: 20,
    fontWeight: FontWeight.w700, // Bold
    // color: AppColors.textPrimary,
  );

  // App Bar title
  static const TextStyle h2 = TextStyle(
    fontFamily: font,
    fontSize: 17,
    fontWeight: FontWeight.w600, // Semibold
    // color: AppColors.textPrimary,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w600, // Semibold
    // color: AppColors.textPrimary,
  );

  ///
  //bodyDark
  static const TextStyle bodyDark = TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w400, // Semibold
    // color: AppColors.textPrimary,
  );

  ///

  //darkBold
  static const TextStyle darkBold = TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w500, // bold
    // color: AppColors.textPrimary,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: font,
    fontSize: 13,
    fontWeight: FontWeight.w600, // Semibold
    // color: AppColors.textPrimary,
  );

  // Subtitles
  static const TextStyle subtitle = TextStyle(
    fontFamily: font,
    fontSize: 13,
    fontWeight: FontWeight.w500, // Medium
    // color: AppColors.textSecondary,
  );

  ///
  // SubtitlesII
  static const TextStyle subtitleII = TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w400, // Medium
    // color: AppColors.textSecondary,
  );

  // Body
  static const TextStyle body = TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w400, // Regular
    // color: AppColors.textSecondary,
  );

  // Labels
  static const TextStyle label = TextStyle(
    fontFamily: font,
    fontSize: 13,
    fontWeight: FontWeight.w300, // Light
    // color: AppColors.textSecondary,
  );

  // Captions
  static const TextStyle caption = TextStyle(
    fontFamily: font,
    fontSize: 12,
    fontWeight: FontWeight.w200, // Thin
    // color: AppColors.textSecondary,
  );

  // captionsBold -added
  static const TextStyle captionsBold = TextStyle(
    fontFamily: font,
    fontSize: 12,
    fontWeight: FontWeight.w400, //
    // color: AppColors.textSecondary,
  );

  //messages
  static const TextStyle messages = TextStyle(
    fontFamily: font,
    fontSize: 14,
    fontWeight: FontWeight.w400, //
    // color: AppColors.textSecondary,
  );

  // Buttons
  static const TextStyle button = TextStyle(
    fontFamily: font,
    fontSize: 16,
    fontWeight: FontWeight.w600, // Semibold
    // color: Colors.white,
  );

  //devices fonts
  static const TextStyle devicesTitle = TextStyle(
    fontFamily: font,
    fontSize: 34,
    fontWeight: FontWeight.w600,
    height: 1.0,
  );

  static const TextStyle devicesSubtitle = TextStyle(
    fontFamily: font,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.1,
  );
}
