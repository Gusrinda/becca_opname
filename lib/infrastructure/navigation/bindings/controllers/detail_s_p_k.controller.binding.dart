import 'package:get/get.dart';

import '../../../../presentation/spk/DetailSPK/controllers/detail_s_p_k.controller.dart';

class DetailSPKControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailSPKController>(
      () => DetailSPKController(),
    );
  }
}
