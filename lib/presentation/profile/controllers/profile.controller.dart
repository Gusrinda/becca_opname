import 'package:becca_inventory/core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  void handleLogoutUser() {
    final box = GetStorage();
    box.remove('dataUser');

    Get.offAll(() => SplashscreenScreen());
  }
}
