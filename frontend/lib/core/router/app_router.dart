import 'package:frontend/core/router/root_screen.dart';
import 'package:frontend/core/router/screen_redirect.dart';
import 'package:frontend/features/bookings/presentation/screens/all_tickets_screen.dart';
import 'package:frontend/features/dashboard/presentation/screens/dashboard.dart';
import 'package:frontend/features/favourites/presentation/screens/favourites_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/signup_screen.dart';
import '../../features/dashboard/presentation/screens/event_detail_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';

class AppRoute {
  static final router = GoRouter(
    initialLocation: AppRoutes.screenRedirectPath,
    routes: [
      GoRoute(
        path: AppRoutes.loginScreenPath,
        name: AppRoutes.loginScreenName,
        builder: (context,state) {
          return LoginScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.rootScreenPath,
        name: AppRoutes.rootScreenName,
        builder: (context,state) {
          return RootScreen();
        },
      )
      ,GoRoute(
        path: AppRoutes.signInScreenPath,
        name: AppRoutes.signInScreenName,
        builder: (context, state) {
          return SignupScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.dashboardScreenPath,
        name: AppRoutes.dashboardScreenName,
        builder: (context, state) {
          return Dashboard();
        },
      ),GoRoute(
        path: AppRoutes.screenRedirectPath,
        name: AppRoutes.screenRedirectName,
        builder: (context, state) {
          return ScreenRedirect();
        },
      ),GoRoute(
        path: AppRoutes.allTicketsScreenPath,
        name: AppRoutes.allTicketsScreenName,
        builder: (context, state) {
          return AllTicketsScreen();
        },
      ),GoRoute(
        path: AppRoutes.favouritesScreenPath,
        name: AppRoutes.favouritesScreenName,
        builder: (context, state) {
          return FavouritesScreen();
        },
      ),GoRoute(
        path: AppRoutes.profileScreenPath,
        name: AppRoutes.profileScreenName,
        builder: (context, state) {
  return ProfileScreen();
  }),GoRoute(
        path: AppRoutes.eventDetailScreenPath,
        name: AppRoutes.eventDetailScreenName,
        builder: (context, state) {
          return EventDetailScreen();
        },
      ),
    ],
  );
}

interface class AppRoutes {
  static const String loginScreenPath = '/login';
  static const String signInScreenPath = '/signIn';
  static const String loginScreenName = 'login';
  static const String signInScreenName = 'signIn';
  static const String dashboardScreenPath = '/dashboard';
  static const String dashboardScreenName = 'dashboard';
  static const String screenRedirectPath = '/screenRedirect';
  static const String screenRedirectName = 'screenRedirect';
  static const String rootScreenPath = '/rootScreen';
  static const String rootScreenName = 'rootScreen';
  static const String allTicketsScreenName = 'allTickets';
  static const String allTicketsScreenPath = '/allTickets';
  static const String favouritesScreenName = 'favourites';
  static const String favouritesScreenPath = '/favourites';
   static const String profileScreenName = 'profile';
  static const String profileScreenPath = '/profile';
   static const String eventDetailScreenName = 'eventDetail';
  static const String eventDetailScreenPath = '/eventDetail';
  // static const String loginScreen = '/login';
}
