import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_spacing.dart';

class CancelledEventCard extends StatelessWidget {
  const CancelledEventCard({
    super.key,
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.buttonLabel,
    this.onPressed,
  });
  final String title;
  final String location;
  final String imageUrl;
  final String buttonLabel;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onPrimary,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.sm),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.md),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Image.network(imageUrl, fit: BoxFit.fill),
                ),
                AppGaps.wMd,
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.place_outlined,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                AppGaps.wSm,
                                Text(
                                  location,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            ),
                            AppGaps.wSm,

                            InkWell(
                              onTap: onPressed,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: AppSpacing.sm,
                                  horizontal: AppSpacing.md,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primary.withAlpha(25),
                                  borderRadius: BorderRadius.circular(
                                    AppRadius.sm,
                                  ),
                                ),
                                child: Text(
                                  "Cancelled",
                                  style: Theme.of(context).textTheme.labelLarge
                                      ?.apply(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppGaps.md,

            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: () {}, child: Text("View Detail"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
