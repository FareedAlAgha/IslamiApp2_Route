import 'package:flutter/material.dart';
import 'package:islami_app/home/Home_Screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/sura_detailes/sura_detailes_screen.dart';
import 'package:provider/provider.dart';
import 'My_Theme.dart';
import 'hadeth_deatils/hadeth_details.dart';

class MyApplection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      theme: MyTheme.lightmode,
      darkTheme: MyTheme.DarkMode,
      themeMode: settingsProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraScreenDetailes.routeName: (_) => SuraScreenDetailes(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),



      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

void main() {
        runApp(ChangeNotifierProvider(
          create: (buildContext)=>SettingsProvider(),

        child: MyApplection()));
}
