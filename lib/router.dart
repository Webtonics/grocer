import 'package:flutter/material.dart';
import 'package:grocer/pages/homepage.dart';
import 'package:grocer/resourses/providers/themeprovider.dart';

class MyRouter extends StatefulWidget {
  const MyRouter({super.key});

  @override
  State<MyRouter> createState() => _MyRouterState();
}

class _MyRouterState extends State<MyRouter> {
  @override
  void initState() {
    ThemeProvider();
    super.initState();
  }  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}