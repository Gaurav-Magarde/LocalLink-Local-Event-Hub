import 'package:frontend/core/router/screen_redirect.dart';
import 'package:frontend/features/event/presentation/screens/dashboard.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/signup_screen.dart';

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
      ),GoRoute(
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
  // static const String loginScreen = '/login';
}
