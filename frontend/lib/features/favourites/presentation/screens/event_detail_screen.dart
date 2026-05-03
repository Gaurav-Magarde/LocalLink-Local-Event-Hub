import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/theme/colors.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_spacing.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  imageUrl:
                      "https://images.pexels.com/photos/3379261/pexels-photo-3379261.jpeg",
                ),
                Positioned(
                  left: AppSpacing.lg,
                  top: AppSpacing.xxxl,
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.whitetext,
                    ),
                  ),
                ),
                Positioned(
                  right: AppSpacing.lg,
                  top: AppSpacing.xxxl,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: AppColors.whitetext,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Card(
                    shadowColor: Colors.grey,
                    color: Theme.of(context).colorScheme.surface,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Party with friends at night - 2022",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ),
                              AppGaps.sm,

                              Text(
                                "\$30.00",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          ),
                          AppGaps.sm,

                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              AppGaps.wSm,
                              Text(
                                "Bhopal,MP",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                          AppGaps.sm,

                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              AppGaps.wSm,
                              Text(
                                "20/02/0215",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
