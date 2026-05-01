import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_spacing.dart';

class HomeEventChips extends StatelessWidget {
  const HomeEventChips({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurStyle: BlurStyle.outer,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(children: [Icon(icon), AppGaps.sm, Text(label)]),
    );
  }
}
