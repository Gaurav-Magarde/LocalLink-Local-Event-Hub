import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_spacing.dart';
import '../../theme/colors.dart';

class GradientElevatedButton extends StatelessWidget {
  const GradientElevatedButton({super.key, this.onPressed, required this.child});
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Match the border radius here to the button's shape
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.sm),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          // IMPORTANT: Set padding to zero so the Container's gradient fills the button
          padding: EdgeInsets.zero,
          maximumSize: const Size(double.infinity, AppRadius.xxl),
          // Set a minimum height if you want it to look like a standard button
          minimumSize: const Size(0, AppRadius.xxl),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.sm),
          ),
          foregroundColor: Colors.white,
          disabledForegroundColor: Colors.grey,
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        child: Ink(
          // This ensures the splash effect (ripple) stays inside the gradient area
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.sm),
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(minHeight: AppRadius.xxl),
            child: child,
          ),
        ),
      ),
    );
  }
}
