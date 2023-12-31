import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => const SplashscreenScreen(),
      binding: SplashscreenControllerBinding(),
    ),
    GetPage(
      name: Routes.BERANDA,
      page: () => const BerandaScreen(),
      binding: BerandaControllerBinding(),
    ),
    GetPage(
      name: Routes.SPK,
      page: () => const SpkScreen(),
      binding: SpkControllerBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION,
      page: () => const NotificationScreen(),
      binding: NotificationControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.DETAIL_S_P_K,
      page: () => DetailSPKScreen(),
      binding: DetailSPKControllerBinding(),
    ),
  ];
}
