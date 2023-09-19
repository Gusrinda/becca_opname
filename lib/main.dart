import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  Intl.defaultLocale = 'id_ID';
  await initializeDateFormatting(Intl.defaultLocale);

  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Becca Inventory',
        initialRoute: initialRoute,
        debugShowCheckedModeBanner: false,
        getPages: Nav.routes,
        theme: MyAppTheme().lightTheme);
  }
}
