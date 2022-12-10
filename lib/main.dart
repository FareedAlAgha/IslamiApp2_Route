import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/home/Home_Screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/sura_detailes/sura_detailes_screen.dart';
import 'package:provider/provider.dart';
import 'My_Theme.dart';
import 'hadeth_deatils/hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApplection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      theme: MyTheme.lightmode,
      darkTheme: MyTheme.DarkMode,
      themeMode: settingsProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.currentLan),
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
