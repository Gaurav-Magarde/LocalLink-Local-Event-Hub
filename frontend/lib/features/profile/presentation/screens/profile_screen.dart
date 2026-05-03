import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_spacing.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      radius: AppRadius.xxl,
                      child: Icon(Icons.person, size: AppRadius.xxl),
                    ),
                    AppGaps.md,
                    Text(
                      "Gaurav Magarde",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    AppGaps.lg,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("136",style: Theme.of(context).textTheme.titleLarge,),
                              Text("My Connections",style: Theme.of(context).textTheme.titleMedium,)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: VerticalDivider(
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("21",style: Theme.of(context).textTheme.titleLarge,),
                              Text("Events Attended",style: Theme.of(context).textTheme.titleMedium,)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              AppGaps.md,
              ElevatedButton(
                onPressed: (){},
                child: Text("Edit Profile"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
