import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 0),
        shrinkWrap: true,
        children: [
          Container(
            decoration: BoxDecoration(
              color: themeRed,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.images.bgMerah.path),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Tindakan yang diambil ketika gambar diklik
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(75),
                    ),
                    width: 100,
                    height: 100,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Icon(Icons.camera_alt_rounded)),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dinda Salim",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profil",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Divider(),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: TextEditingController(text: 'Dinda Salim'),
                  readOnly: true,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      fillColor: Colors.transparent,
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: TextEditingController(text: 'dindasalim@bca.com'),
                  readOnly: true,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_rounded),
                      fillColor: Colors.transparent,
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: TextEditingController(text: '+62 8234567890'),
                  readOnly: true,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      fillColor: Colors.transparent,
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: TextEditingController(text: '******'),
                  readOnly: true,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      fillColor: Colors.transparent,
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                ),
                SizedBox(
                  height: 16 * 4,
                ),
                TextFormField(
                  controller: TextEditingController(text: 'Logout'),
                  onTap: () async {
                    //LOGOUT
                    controller.handleLogoutUser();
                  },
                  readOnly: true,
                  style:
                      TextStyle(color: themeRed, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.logout,
                      color: themeRed,
                    ),
                    fillColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
