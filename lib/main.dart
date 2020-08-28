import 'package:drawer_navigation/src/home/HomeWidget.dart';
import 'package:drawer_navigation/src/home/widgets/HomeController.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomeController(child: HomeWidget()),
    );
  }
}
