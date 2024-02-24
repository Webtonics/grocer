import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDark, BuildContext context){
    return ThemeData(
      scaffoldBackgroundColor: isDark? const Color.fromARGB(255, 42, 42, 42) : Colors.white,
      primaryColor: Colors.deepPurple,
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)),
      textTheme: TextTheme(titleMedium: TextStyle(color: isDark? Colors.white: Colors.black))
    );
  }
}



//format
// class Styles {
//   static ThemeData themeData(bool isDark, BuildContext context){
//     return ThemeData(
      
//     );
//   }
  
// }


