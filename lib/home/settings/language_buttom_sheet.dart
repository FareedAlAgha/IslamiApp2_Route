import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageButtomSheet  extends StatefulWidget {

  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
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
                settingsProiver.changeLocal('en');

            },
              child:
                  settingsProiver.currentLan=='en'?
                getSelectedItem('English') : getUnSelectedItem('English')


          ),

          SizedBox(height: 18,),
          InkWell(
            onTap: (){
              settingsProiver.changeLocal('ar');

            },
              child:
                  settingsProiver.currentLan==('ar')?
                 getSelectedItem('العربية'): getUnSelectedItem('العربية')


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
