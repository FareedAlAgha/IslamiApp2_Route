import 'package:flutter/material.dart';
import 'package:islami_app/home/Home_Screen.dart';
import 'package:islami_app/sura_detailes/sura_detailes_screen.dart';
import 'My_Theme.dart';

class MyApplection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightmode,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraScreenDetailes.routeName: (_) => SuraScreenDetailes(),



      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

void main() {
  runApp(MyApplection());
}
