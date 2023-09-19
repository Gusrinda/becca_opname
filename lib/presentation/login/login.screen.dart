import 'package:get/get.dart';
import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  @override
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "Masuk ke akun",
                          style: TextStyle(),
                        ),
                        const SizedBox(height: 16.0 * 4),
                        Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              flex: 8,
                              child: Assets.images.login.image(height: 150),
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 16.0 * 4),
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Expanded(
                          flex: 8,
                          child: Form(
                            child: Column(
                              children: [
                                Obx(
                                  () => TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: Colors.black,
                                    controller: controller
                                        .formInputEmail.textEditingController,
                                    onChanged: (value) {
                                      final fieldEmail = controller
                                          .formInputEmail
                                          .toDirty(value: value);
                                      if (value.isNotEmpty) {
                                        controller.isFieldValid.value = true;
                                      }
                                      controller.formInputEmail = fieldEmail;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "masukkan email",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      errorText:
                                          !controller.isFieldValid.value &&
                                                  controller
                                                      .formInputEmail.isNotValid
                                              ? 'isi email'
                                              : null,
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                ),
                                Obx(() {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.done,
                                      obscureText:
                                          !controller.visiblePassword.value,
                                      cursorColor: Colors.black,
                                      controller: controller.formInputPassword
                                          .textEditingController,
                                      onChanged: (value) {
                                        final fieldEmail = controller
                                            .formInputPassword
                                            .toDirty(value: value);
                                        if (value.isNotEmpty) {
                                          controller.isFieldValid.value = true;
                                        }
                                        controller.formInputPassword =
                                            fieldEmail;
                                      },
                                      decoration: InputDecoration(
                                        hintText: "masukkan password",
                                        errorText:
                                            !controller.isFieldValid.value &&
                                                    controller.formInputPassword
                                                        .isNotValid
                                                ? 'isi password'
                                                : null,
                                        suffixIcon: IconButton(
                                          onPressed:
                                              controller.onVisiblePassword,
                                          icon:
                                              !controller.visiblePassword.value
                                                  ? Icon(
                                                      Icons.visibility,
                                                      color: themeRed,
                                                    )
                                                  : Icon(
                                                      Icons.visibility_off,
                                                      color: themeRed,
                                                    ),
                                        ),
                                        hintStyle: TextStyle(
                                          color: Colors.grey[500],
                                        ),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Icon(Icons.lock),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                                const SizedBox(height: 16.0 * 4),
                                Hero(
                                  tag: "login_btn",
                                  child: ElevatedButton(
                                    onPressed: () {
                                      controller.handleLogin();
                                    },
                                    child: Text(
                                      "Login".toUpperCase(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      "Belum punya akun? ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return Container();
                                            },
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Register",
                                        style: TextStyle(
                                          color: themeRed,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
