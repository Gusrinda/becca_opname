import 'dart:developer';

import 'package:becca_inventory/domain/core/interfaces/models/dummy/userModel.dart';
import 'package:becca_inventory/infrastructure/util/form_text_input.dart';
import 'package:becca_inventory/presentation/screens.dart';
import 'package:formz/formz.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  RxBool visiblePassword = false.obs;
  RxBool isFieldValid = true.obs;
  FormTextInput formInputEmail = FormTextInput.pure();
  FormTextInput formInputPassword = FormTextInput.pure();

  void onVisiblePassword() {
    visiblePassword.value = !visiblePassword.value;
  }

  void handleLogin() {
    log('${formInputEmail} && ${formInputPassword}');

    final status = Formz.validate([formInputEmail, formInputPassword]);

    if (!status) {
      isFieldValid.value = status;
      return;
    }

    if (!formInputEmail.value.isEmail) {
      Get.snackbar('Login', 'Field email wajib diisi email!',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    if (formInputPassword.value.length < 6) {
      Get.snackbar('Login', 'Field password kurang dari 6!',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    UserModel userLogin = UserModel(
        name: formInputEmail.valueIfNotEmpty,
        password: formInputPassword.valueIfNotEmpty);

    final box = GetStorage();

    box.write('dataUser', userLogin.toMap());

    Get.snackbar('Login', 'Login Berhasil!',
        snackPosition: SnackPosition.BOTTOM);
    Get.offAll(() => HomeScreen());
  }
}
