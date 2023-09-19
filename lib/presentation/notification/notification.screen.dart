import 'package:becca_inventory/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/notification.controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> daftarNotifikasi = [
      "Target",
      "Tagihan",
      "Notifikasi",
      "Visiting",
      "Tagihan",
    ];

    List<String> daftarTanggal = ["28 April 2023", "27 April 2023"];
    List<int> daftar = [1, 2];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notifikasi"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          ListView.builder(
              shrinkWrap: true, //MUST TO ADDED
              itemCount: daftarTanggal.length,
              itemBuilder: (BuildContext c, int index) {
                return DaftarNotifikasiPerTanggal(
                    tanggal: daftarTanggal[index],
                    urutan: index,
                    daftarNotifikasi: daftarNotifikasi,
                    daftar: daftar);
              }),
        ],
      ),
    );
  }
}

class DaftarNotifikasiPerTanggal extends StatelessWidget {
  const DaftarNotifikasiPerTanggal({
    super.key,
    required this.daftarNotifikasi,
    required this.daftar,
    required this.tanggal,
    required this.urutan,
  });

  final int urutan;
  final String tanggal;
  final List<String> daftarNotifikasi;
  final List<int> daftar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tanggal,
            style: TextStyle(
                color: Color(0xFF8F8F8F),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 12,
          ),
          ListView.builder(
              shrinkWrap: true, //MUST TO ADDED
              //MUST TO ADDED
              itemCount: daftar[urutan],
              itemBuilder: (BuildContext c, int index) {
                return CardListNotification(
                  isAlreadyRead: index == daftar[urutan] - 1,
                  isLast: index == daftar[urutan] - 1,
                );
              }),
        ],
      ),
    );
  }
}

class CardListNotification extends StatelessWidget {
  const CardListNotification({
    super.key,
    required this.isAlreadyRead,
    required this.isLast,
  });

  final bool isAlreadyRead;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    Widget iconNotifikasi = ColorFiltered(
      colorFilter: ColorFilter.mode(
          isAlreadyRead ? Colors.grey : Colors.red, BlendMode.srcIn),
      child: Image.asset(
        Assets.images.form.path,
        width: 20,
      ),
    );

    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, DetailSuratJalanClose.routeName);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0x33DDDDDD)),
                    child: iconNotifikasi),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "SPK-007 Ditolak. Silakan lakukan pengaturan ulang.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight:
                            isAlreadyRead ? FontWeight.w400 : FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 16,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            !isLast
                ? Divider(
                    color: Colors.grey,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
