
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/theme/colors.dart';

import '../../../../core/utils/widgets/text_field_widget.dart';
import '../widgets/event_chips_widget.dart';
import '../widgets/location_header_widget.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context,ref) {
    // final user = ref.watch(currentUserProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
body: Padding(
  padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 24),
  child: SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 55,),
        LocationHeader(),
        SizedBox(height: 16,),
        TextFieldWidget(
          prefixIcon: Icons.search_rounded,
          hint: "Search",
          labelText: "Search",
          suffixIcon: InkWell(
            child: Icon(Icons.filter_list_outlined),
          ),
        ),
        SizedBox(height: 16,),

         SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeEventChips(icon: Icons.wrong_location,label: "Education",),
                SizedBox(width: 8,),
                HomeEventChips(icon: Icons.telegram,label: "Films",),
                SizedBox(width: 8,),
                HomeEventChips(icon: Icons.align_horizontal_center,label: "Entertainment",),
                SizedBox(width: 8,),
                HomeEventChips(icon: Icons.telegram,label: "Films",),
              ],
            ),
          ),
        SizedBox(height: 16,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Upcoming Events",style: Theme.of(context).textTheme.titleLarge),
            Text("See All",style: Theme.of(context).textTheme.titleMedium?.apply(color: Theme.of(context).colorScheme.primary))
          ],
        )
      ],
    ),
  ),
),
    );
  }
}
