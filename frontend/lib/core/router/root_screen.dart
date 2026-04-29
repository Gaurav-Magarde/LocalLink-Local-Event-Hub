import 'package:flutter/material.dart';
import 'package:frontend/features/dashboard/presentation/screens/dashboard.dart';

import '../theme/colors.dart';
// Import your EColors here!

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  // This variable keeps track of which tab is active
  int _currentIndex = 0;

  // These are the dummy screens we will swap between.
  // Later, we will replace these with your actual EventFeed and Profile screens!
  final List<Widget> _screens = [
    const Dashboard(),
    const Center(child: Text("My Tickets", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    const Center(child: Text("Favourites", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    const Center(child: Text("Profile & Settings", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColors.background,

      body: _screens[_currentIndex],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: EColors.accentPrimary.withOpacity(0.2),

          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(color: EColors.primary, fontWeight: FontWeight.w600, fontSize: 12);
            }
            return const TextStyle(color: EColors.textSecondary, fontWeight: FontWeight.w500, fontSize: 12);
          }),
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: EColors.backgroundPrimary, // Pure white bar
          elevation: 0, // Keeps it flat and clean
          height: 70, // Gives it nice breathing room

          // The actual icons
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: EColors.textSecondary),
              selectedIcon: Icon(Icons.home, color: EColors.primary),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.airplane_ticket_outlined, color: EColors.textSecondary),
              selectedIcon: Icon(Icons.airplane_ticket, color: EColors.primary),
              label: 'Discover',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline_rounded, color: EColors.textSecondary),
              selectedIcon: Icon(Icons.favorite, color: EColors.primary),
              label: 'Favourite',
            ),NavigationDestination(
              icon: Icon(Icons.person_outline, color: EColors.textSecondary),
              selectedIcon: Icon(Icons.person, color: EColors.primary),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}