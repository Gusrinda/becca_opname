import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/splashscreen.controller.dart';

class SplashscreenScreen extends GetView<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      Future<bool> loading() async {
        await Future.delayed(const Duration(seconds: 2));

        final splashController = Get.put(SplashscreenController());

        splashController.startTimer();
        return true;
      }

      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.logoBecca.image(height: 100),
              const SizedBox(
                height: 20.0,
              ),
              // Text(
              //   'Becca',
              //   style: GoogleFonts.pacifico(
              //     textStyle: const TextStyle(
              //       color: Colors.redAccent,
              //       fontSize: 30.0,
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 20.0,
              // ),
              FutureBuilder(
                future: loading(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  print("SNAPSHOT DATA ${snapshot}");

                  if (snapshot.data == null) {
                    return const CupertinoActivityIndicator();
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
