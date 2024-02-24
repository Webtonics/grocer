import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePrefs {
  static const THEME_STATUS = "THEME_STATUS";

  //SETTER
  setDarktheme(bool value)async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.setBool(THEME_STATUS, value);
  }

  // GETTER
  Future<bool> getTheme()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? false; //null check
  }
}