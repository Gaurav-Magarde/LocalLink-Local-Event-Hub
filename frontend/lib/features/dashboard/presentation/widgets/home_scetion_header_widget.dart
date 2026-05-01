
import 'package:flutter/material.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key, required this.title, required this.label, this.onTap,
  });
  final String title;
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            label,
            style: Theme.of(context).textTheme.titleMedium?.apply(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
