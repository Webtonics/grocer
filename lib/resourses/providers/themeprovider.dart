import 'package:flutter/material.dart';
import 'package:grocer/services/theme_prefs.dart';


class ThemeProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
   bool isDark = true;
   //learn the getter
   bool get getTheme => isDark;

   set setTheme(bool value){
    isDark = value;
    darkThemePrefs.setDarktheme(value);
    notifyListeners();
   }

    // void changeTheme(){
    //   isDark = !isDark;
    //   print(isDark);
    //   notifyListeners();
    // }
}