import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/router/screed_redirect_controller.dart';
import 'package:frontend/features/auth/presentation/controllers/login_controller.dart';

import 'app_router.dart';

class ScreenRedirect extends ConsumerStatefulWidget{
  const ScreenRedirect({super.key});



  @override
  ConsumerState<ScreenRedirect> createState() {
    return _ScreenRedirect();
  }

}

class _ScreenRedirect extends ConsumerState<ScreenRedirect>{

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero,() async {
    ref.listenManual(currentUserProvider, (prev,next){
      final userLoggedIn = next;
      print("listener");
      if (userLoggedIn==null||userLoggedIn.id.isEmpty) {
        AppRoute.router.goNamed(AppRoutes.loginScreenName);
      } else {
        AppRoute.router.goNamed(AppRoutes.dashboardScreenName);

      }

    },fireImmediately: true);

    });
  }



}