import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:becca_inventory/infrastructure/util/bottom_app_bar.dart';
import 'package:becca_inventory/presentation/screens.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.selectedTabIndex,
            children: [
              BerandaScreen(),
              SpkScreen(),
              NotificationScreen(),
              ProfileScreen()
            ],
          ),
        bottomNavigationBar: _bottomNavigationBar(),
        );
      },
    );
  }

  CustomBottomAppBar _bottomNavigationBar() {
    return CustomBottomAppBar(
      notchedShape: const CircularNotchedRectangle(),
      onTap: (page) {
        controller.changeTabIndex(page);
      },
      height: kToolbarHeight,
      backgroundColor: Colors.white,
      selectedItemColor: themeRed2,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      items: [
        CustomBottomAppBarItem(
          icon: Assets.icons.home.path,
          text: "Home",
        ),
        CustomBottomAppBarItem(
          icon: Assets.icons.spk.path,
          text: "Surat Jalan",
        ),
        CustomBottomAppBarItem(
          icon: Assets.icons.notif.path,
          text: "Notif",
        ),
        CustomBottomAppBarItem(
          icon: Assets.icons.prpofile.path,
          text: "Profile",
        ),
      ],
    );
  }
}
