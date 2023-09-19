import 'package:becca_inventory/core.dart';
import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:becca_inventory/infrastructure/util/formatter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/spk.controller.dart';

class SpkScreen extends GetView<SpkController> {
  const SpkScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "List SPK",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey.withOpacity(0.1),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20),
                physics: ScrollPhysics(),
                itemCount: 20,
                itemBuilder: (BuildContext c, int index) {
                  return ListTile(
                    onTap: () {
                      Get.to(() => DetailSPKScreen());
                    },
                    leading: Container(
                      decoration: BoxDecoration(
                          color: themeRed, shape: BoxShape.circle),
                      padding: EdgeInsets.all(12),
                      child: ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        child: Image.asset(
                          Assets.images.form.path,
                          width: 24,
                        ),
                      ),
                    ),
                    title: Text("SPK-00${index + 1}"),
                    subtitle: Text(
                      kDateShortMonthFormat.format(
                          DateTime.now().subtract(Duration(days: index))),
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Container(
                      width: 16,
                      height: 16,
                      // padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: index.isOdd ? Colors.grey : Colors.green,
                          shape: BoxShape.circle),
                    ),
                  );
                  // return CardPengirimanTerakhir(
                  //   index: index * 1 + 1,
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
