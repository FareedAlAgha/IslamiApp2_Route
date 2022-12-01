import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/settings/theme_buttom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Theme',
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
              Text('Light',
              style: Theme.of(context).textTheme.headline6,),

            ),
          ),
          SizedBox(height: 24,),
          Text('Language',
            style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 1,


                )
            ),
            child:
            Text('Engilsh',
              style: Theme.of(context).textTheme.headline6,),

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
}
