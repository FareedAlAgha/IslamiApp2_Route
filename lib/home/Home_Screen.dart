import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/Hadeth_Tab.dart';
import 'package:islami_app/home/quran/Quran_Tab.dart';
import 'package:islami_app/home/radio/Radio_Tab.dart';
import 'package:islami_app/home/sebha/Sebha_Tab.dart';
import 'package:islami_app/home/hadeth/Hadeth_Tab.dart';
import 'package:islami_app/home/radio/Radio_Tab.dart';
import 'package:islami_app/home/settings/settings_tab.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
            image :AssetImage(settingsProvider.getMainBackgroundImage()

          ),
        fit: BoxFit.fill)),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlyselectedIndex) {
            setState(() {
              selectedIndex = newlyselectedIndex;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                    AssetImage('assets/images/2.0X/icon_quran.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                    AssetImage('assets/images/2.0X/icon_hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                    AssetImage('assets/images/2.0X/icon_radio.png')),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                    AssetImage('assets/images/2.0X/icon_sebha.png')),
                label: AppLocalizations.of(context)!.mention),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
        body: Tabs[selectedIndex],
      ),
    );
  }

  List<Widget> Tabs = [QuranTab(),HadethTab(),RadioTab(),  SebhaTab(),SettingsTab()];
}
