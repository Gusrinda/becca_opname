import 'package:get/get.dart';

import 'package:becca_inventory/presentation/splashscreen/controllers/auth_controller.dart';

import '../../../../presentation/splashscreen/controllers/splashscreen.controller.dart';

class SplashscreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
    Get.lazyPut<SplashscreenController>(
      () => SplashscreenController(),
    );
  }
}
