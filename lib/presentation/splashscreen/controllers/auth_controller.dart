import 'package:becca_inventory/domain/core/interfaces/models/dummy/userModel.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  Future<UserModel?> getDataLogin() async {
    final box = GetStorage();

    if (box.read('dataUser') != null) {
      UserModel dataUser = UserModel.fromMap(box.read('dataUser'));
      return dataUser;
    }

    return null;
  }
}
