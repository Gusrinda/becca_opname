import 'dart:async';
import 'dart:developer';

import 'package:becca_inventory/domain/core/interfaces/models/dummy/userModel.dart';
import 'package:becca_inventory/presentation/login/login.screen.dart';
import 'package:becca_inventory/presentation/screens.dart';
import 'package:becca_inventory/presentation/splashscreen/controllers/auth_controller.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  void startTimer() async {
    final authC = Get.put(AuthController());

    UserModel? dataUser = await authC.getDataLogin();

    print('DATA USER ${dataUser}');

    if (dataUser != null) {
      Get.off(() => HomeScreen());
    } else {
      Get.off(() => LoginScreen());
    }
  }
}
