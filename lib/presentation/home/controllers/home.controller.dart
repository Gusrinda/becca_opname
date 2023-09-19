import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedTabIndex = 0;

  void changeTabIndex(int index) {
    selectedTabIndex = index;
    update();
  }
}
