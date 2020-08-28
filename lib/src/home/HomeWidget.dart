import 'package:drawer_navigation/src/home/pages/Account.dart';
import 'package:drawer_navigation/src/home/pages/Favorite.dart';
import 'package:drawer_navigation/src/home/pages/HomePage.dart';
import 'package:drawer_navigation/src/home/widgets/CustomDrawer.dart';
import 'package:drawer_navigation/src/home/widgets/HomeController.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  //Abaixo seria a chave para utilização do openEndDrawer

  var pages = <Widget>[
    HomePage(),
    Favorite(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text("Navegação")),
      body: StreamBuilder<int>(
        stream: HomeController.of(context).drawerChangeOutput,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return pages[snapshot.data];
        },
      ),
    );
  }
}
