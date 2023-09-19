import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:becca_inventory/infrastructure/util/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'controllers/beranda.controller.dart';

class BerandaScreen extends GetView<BerandaController> {
  const BerandaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Assets.images.bgMerah.path),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Container(
              height: size.height * 0.7,
              padding: EdgeInsets.only(top: kToolbarHeight),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: 100,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Assets.images.profile
                                        .image(fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Hi, Dinda!",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      padding: EdgeInsets.all(12),
                                      child: ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                            themeRed2, BlendMode.srcIn),
                                        child: Image.asset(
                                          Assets.images.form.path,
                                          width: 24,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.pushNamed(
                                        //     context, DaftarDOPage.routeName);
                                      },
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "2 SPK Ditolak",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "Segera hitung ulang item",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: DraggableScrollableSheet(
                initialChildSize: 0.5,
                minChildSize: 0.5,
                maxChildSize: 1,
                builder: (_, controller) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 5,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: themeRed2,
                          ),
                        ),
                      ),
                      SafeArea(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          controller: controller,
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
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
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                itemBuilder: (BuildContext c, int index) {
                                  return ListTile(
                                    leading: Container(
                                      decoration: BoxDecoration(
                                          color: themeRed,
                                          shape: BoxShape.circle),
                                      padding: EdgeInsets.all(12),
                                      child: ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                        child: Image.asset(
                                          Assets.images.form.path,
                                          width: 24,
                                        ),
                                      ),
                                    ),
                                    title: Text("SPK-00${index + 1}"),
                                    subtitle: Text(
                                      kDateShortMonthFormat.format(
                                          DateTime.now()
                                              .subtract(Duration(days: index))),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    trailing: Container(
                                      width: 16,
                                      height: 16,
                                      // padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: index.isOdd
                                              ? Colors.grey
                                              : Colors.green,
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
