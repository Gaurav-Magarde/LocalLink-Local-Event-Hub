import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/router/app_router.dart';

import '../../features/auth/presentation/controllers/login_controller.dart';

final screenRedirectProvider = Provider((ref) => RouteController(ref));

class RouteController extends Notifier<void>{
  final Ref ref;
  RouteController(this.ref);
  void screenRedirect() async {


    final userLoggedIn = ref.read(currentUserProvider);
    if (userLoggedIn==null||userLoggedIn.id.isEmpty) {
      AppRoute.router.goNamed(AppRoutes.loginScreenName);
    } else {
      AppRoute.router.goNamed(AppRoutes.dashboardScreenName);

    }
  }

  @override
  void build() {
    ref.watch(currentUserProvider);
    print("I am a watcher build !");
    screenRedirect();
  }
}
