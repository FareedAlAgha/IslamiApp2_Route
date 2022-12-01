import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/sura_detailes/sura_detailes_args.dart';
import 'package:islami_app/sura_detailes/verse_widget.dart';
import 'package:islami_app/sura_detailes/sura_detailes_args.dart';
import 'package:islami_app/sura_detailes/verse_widget.dart';
import 'package:provider/provider.dart';

class SuraScreenDetailes extends StatefulWidget {
  static const String routeName = 'Sura-Detailes';

  @override
  State<SuraScreenDetailes> createState() => _SuraScreenDetailesState();
}

class _SuraScreenDetailesState extends State<SuraScreenDetailes> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailesScreenArgs args =
    ModalRoute.of(context)?.settings.arguments as SuraDetailesScreenArgs;
    if (verses.isEmpty) readFile(args.index + 1);
    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Container(
        decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.getMainBackgroundImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(args.name),
            ),
            body: verses.isEmpty
                ? Center(
              child: CircularProgressIndicator(),
            )
                : Card(
              elevation: 12,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: ListView.separated(
                itemBuilder: (_, index) {
                  return verseWidget(verses[index], index + 1);
                },
                itemCount: verses.length,
                separatorBuilder: (_, __) {
                  return Container(
                    color: Theme.of(context).accentColor,
                    height: 1,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 64),
                  );
                },
              ),
            )));
  }

  void readFile(int fileIndex) async {
    String fileContect =
    await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines = fileContect.split('\n');

    setState(() {
      verses = lines;
    });
  }
}