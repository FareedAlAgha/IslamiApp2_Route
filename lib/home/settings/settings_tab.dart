import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/settings/language_buttom_sheet.dart';
import 'package:islami_app/home/settings/theme_buttom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text( AppLocalizations.of(context)!.theme,
          style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeButtomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 1,


                )
              ),
              child:
              Text(settingsProvider.isDarkMode()?
                AppLocalizations.of(context)!.dark:
                AppLocalizations.of(context)!.light,
              style: Theme.of(context).textTheme.headline6,),

            ),
          ),
          SizedBox(height: 24,),
          Text(AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowLanguageBottom();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 1,


                  )
              ),
              child:
              Text(settingsProvider.currentLan=='en'? 'English':
                  "العربية",
                style: Theme.of(context).textTheme.headline6,),

            ),
          )

        ],
      ),
    );

  }

  void showThemeButtomSheet(){
    showModalBottomSheet(context: context, builder: (BuildContext){
        return ThemeButtomSheet();


    });
  }
  ShowLanguageBottom() {
    showModalBottomSheet(context: context, builder: (BuildContext) {
      return LanguageButtomSheet();
    });
  }
}
