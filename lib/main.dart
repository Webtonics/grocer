import 'package:flutter/material.dart';
import 'package:grocer/resourses/constants/theme.dart';
import 'package:grocer/resourses/providers/themeprovider.dart';
import 'package:grocer/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider theme =  ThemeProvider();

  void getAppTheme()async{
    theme.setTheme = await theme.darkThemePrefs.getTheme();
  }
  @override
  void initState() {
    getAppTheme();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {    
   return MultiProvider(providers: [
    ChangeNotifierProvider(create:(context)=> ThemeProvider()),
    ],
    child:  Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocer App',
        theme: Styles.themeData(themeProvider.getTheme, context),
        home: const MyRouter(),
      );
      },
      // child: 
    ),
    );
  }
}


