import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/theme/app_spacing.dart';
import 'package:frontend/core/theme/colors.dart';
import 'package:frontend/core/utils/widgets/event_card_widget.dart';

import '../../../../core/utils/widgets/text_field_widget.dart';
import '../widgets/event_chips_widget.dart';
import '../widgets/home_scetion_header_widget.dart';
import '../widgets/location_header_widget.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final user = ref.watch(currentUserProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppGaps.xxl,
              LocationHeader(),
              AppGaps.md,
              TextFieldWidget(
                prefixIcon: Icons.search_rounded,
                hint: "Search",
                labelText: "Search",
                suffixIcon: InkWell(child: Icon(Icons.filter_list_outlined)),
              ),
              AppGaps.md,

              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HomeEventChips(
                      icon: Icons.wrong_location,
                      label: "Education",
                    ),
                    AppGaps.sm,
                    HomeEventChips(icon: Icons.telegram, label: "Films"),
                    AppGaps.sm,
                    HomeEventChips(
                      icon: Icons.align_horizontal_center,
                      label: "Entertainment",
                    ),
                    AppGaps.sm,
                    HomeEventChips(icon: Icons.telegram, label: "Films"),
                  ],
                ),
              ),
              AppGaps.md,

              HomeSectionHeader(title: "Upcoming Events", label: "See All"),
              AppGaps.md,
              Container(
                clipBehavior: Clip.none,
                height: 250,
                width: 150,
                child: GridView(
                  clipBehavior: Clip.none,
                  // semanticChildCount: 1,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, // 1 item from top to bottom
                      mainAxisExtent: 400, ),
                  children:[
                    EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/26832707/pexels-photo-26832707.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),
                    EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/3379261/pexels-photo-3379261.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/26832707/pexels-photo-26832707.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),
                    EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/26832707/pexels-photo-26832707.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),
                  ] ,
                ),
              ),
              HomeSectionHeader(title: "Recommendations for you", label: "See All"),
              AppGaps.md,
              SizedBox(
                height: 500,
                child: ListView(

                  children:[
                    EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/26832707/pexels-photo-26832707.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "\$30",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),
                    EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/3379261/pexels-photo-3379261.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/26832707/pexels-photo-26832707.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),
                    EventCard(
                      imageUrl:
                      'https://images.pexels.com/photos/26832707/pexels-photo-26832707.jpeg',
                      title:
                      "Event of the day 2027 good morning all the best for the exams and events",
                      buttonLabel: "Join",
                      location: "Bhopal, MP",
                      onPressed: () {},
                    ),
                  ] ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
