import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppTheme {
  final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(),
    primaryColor: themeRed,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: themeRed,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      iconColor: themeRed,
      prefixIconColor: themeRed,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.white,
      iconTheme: IconThemeData(color: themeRed2),
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 16,
      ),
    ),
  );
}

const Color themeRed = Color(0xFFE75C4A);
const Color themeRed2 = Color(0xFFD42C17);
