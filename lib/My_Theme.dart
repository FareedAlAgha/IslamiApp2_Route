import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/Quran_Tab.dart'
;


class MyTheme {
  static const Color lightprimary = Color(0xFFB7935F);
  static const Color Darkprimary = Color(0xFF141A2E);
  static const Color yello = Color(0xFFFACC1D);


  static ThemeData lightmode = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),

        )
      )
    ),
    cardColor: Colors.white,
    accentColor: lightprimary,
    textTheme: TextTheme(
        headline6: TextStyle(fontSize: 22,color: Colors.black),
        headline4: TextStyle(fontSize: 28,color: Colors.black),
        subtitle2: TextStyle(fontSize: 14,color: Colors.black),

    ),
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
  static ThemeData DarkMode = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Darkprimary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),

              )
          )
      ),
    cardColor: Darkprimary,
    accentColor: yello,
      textTheme: TextTheme(
        headline6: TextStyle(fontSize: 22,color: Colors.white),
        headline4: TextStyle(fontSize: 28,color: Colors.white),
        subtitle2: TextStyle(fontSize: 14,color: Colors.white),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Darkprimary,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: yello,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 36,
          color:yello,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(
          color: yello,
        ),
      ));

}
