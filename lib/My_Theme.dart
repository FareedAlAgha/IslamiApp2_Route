import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightprimary = Color(0xFFB7935F);
  static ThemeData lightmode = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightprimary,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 36,
          color: Colors.white,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.black,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
      ));
}
