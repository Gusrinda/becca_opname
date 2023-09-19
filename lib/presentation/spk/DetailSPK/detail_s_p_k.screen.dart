import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/detail_s_p_k.controller.dart';

class DetailSPKScreen extends GetView<DetailSPKController> {
  DetailSPKScreen({Key? key}) : super(key: key);

  @override
  DetailSPKController controller = Get.put(DetailSPKController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail SPK'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "No. SPK",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("SPK-001",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Tanggal",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("28 April 2023",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Depo",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("WH001",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Gudang",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Gudang A",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text("Detail Item",
                style: TextStyle(
                  color: themeRed,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext c, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: index.isOdd ? Colors.white : Color(0xFFF5F5F5)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Item A${index}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "kodeitem${index}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    child: VerticalDivider()),
                                Center(
                                  child: Text("20",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    child: VerticalDivider()),
                                Center(
                                  child: Text("20",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    child: VerticalDivider()),
                                SizedBox(
                                  width: 12,
                                ),
                                Center(
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: themeRed,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Center(
                                    child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          '20',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ))),
                                SizedBox(
                                  width: 12,
                                ),
                                Center(
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: themeRed,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Submit",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
