import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_spacing.dart';

class AllTicketsSelectionHeader extends StatelessWidget {
  const AllTicketsSelectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tabBuilder(
        String label,bool isSelected
        ){
      return Expanded(
        child: Container(
          height: AppSpacing.x4l,
          decoration: BoxDecoration(
            color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondaryContainer
            ,borderRadius: BorderRadius.circular(AppRadius.sm)
          ),
          child: Center(child: Text(label,style: Theme.of(context).textTheme.titleMedium?.apply(
              color: isSelected ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onSurfaceVariant
          ),)),
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer
          ,borderRadius: BorderRadius.circular(AppRadius.sm)

      ),
      child: Row(
        children: [
          tabBuilder("UpComing",false),
          tabBuilder("Completed",true),
          tabBuilder("Cancelled",false),
        ],
      ),
    );
  }
}
