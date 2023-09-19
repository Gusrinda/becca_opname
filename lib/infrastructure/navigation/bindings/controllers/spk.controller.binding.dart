import 'package:get/get.dart';

import '../../../../presentation/spk/controllers/spk.controller.dart';

class SpkControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpkController>(
      () => SpkController(),
    );
  }
}
