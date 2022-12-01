import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeButtomSheet  extends StatefulWidget {

  @override
  State<ThemeButtomSheet> createState() => _ThemeButtomSheetState();
}

class _ThemeButtomSheetState extends State<ThemeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProiver = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          InkWell(
            onTap: (){
              settingsProiver.changeTheme(ThemeMode.light);
            },
              child:
              settingsProiver.isDarkMode()?
              getUnSelectedItem('Light'):
              getSelectedItem('Light')
          ),

          SizedBox(height: 18,),
          InkWell(
            onTap: (){
              settingsProiver.changeTheme(ThemeMode.dark);
            },
              child:
              settingsProiver.isDarkMode()?
              getSelectedItem('Dark'):
              getUnSelectedItem('Dark')
          ),



        ],
      ),
    );
  }

  Widget getSelectedItem(String title){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Theme.of(context).accentColor,

          ),
        ),
        Icon(Icons.check,
          color: Theme.of(context).accentColor,),

      ],
    );

  }

  Widget getUnSelectedItem(String title){
    return
      Text(title,
        style: Theme.of(context).textTheme.headline4,);


  }
}
