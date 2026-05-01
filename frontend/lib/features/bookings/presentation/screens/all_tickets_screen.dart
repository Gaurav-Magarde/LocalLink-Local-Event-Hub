import 'package:flutter/material.dart';
import 'package:frontend/features/bookings/presentation/widgets/all_tickets_selection_header.dart';
import 'package:frontend/features/bookings/presentation/widgets/complted_event_card.dart';

import '../../../../core/theme/app_spacing.dart';
import '../widgets/cancelled_event_card.dart';
import '../widgets/upcoming_event_card.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Tickets")),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AllTicketsSelectionHeader(),
              UpcomingEventCard(
                title: "title",
                location: "Bhopal",
                buttonLabel: "paid",
                imageUrl: "",
                onPressed: () {},
              ),
              CancelledEventCard(
                title: "title",
                location: "Bhopal",
                buttonLabel: "paid",
                imageUrl: "",
                onPressed: () {},
              ),
              CompletedEventCard(
                title: "title",
                location: "Bhopal",
                buttonLabel: "paid",
                imageUrl: "",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
