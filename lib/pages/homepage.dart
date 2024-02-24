import 'package:flutter/material.dart';
import 'package:grocer/resourses/constants/theme.dart';
import 'package:grocer/resourses/providers/themeprovider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return  Scaffold(
      // backgroundColor: 
      body: Column(
        children: [
          Center(
            child: SwitchListTile(
              title: const Text("Change Theme", ),
              onChanged: (bool value){
                setState(() {
                  theme.setTheme = value;
                });
                 
              },
              value:theme.getTheme
              ),
              
          ),
          ElevatedButton(onPressed: (){
          
          }, child: const Text("Change Theme"))
        ],
      ),

    );
  }
}