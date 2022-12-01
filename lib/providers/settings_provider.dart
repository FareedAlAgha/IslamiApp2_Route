import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;


  void changeTheme(ThemeMode newMode){

    currentTheme = newMode;
    notifyListeners();

  }

  String getMainBackgroundImage(){
    return currentTheme==ThemeMode.dark?
    'assets/images/aaaaa.png' :
    'assets/images/main_background.png';
  }
  bool isDarkMode(){
    return currentTheme==ThemeMode.dark;
  }
}