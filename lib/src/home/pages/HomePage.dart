import 'package:drawer_navigation/src/home/widgets/HomeController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Ir para Favoritos"),
        onPressed: () {
          HomeController.of(context)
              .drawerChangeInput
              .add(1); //Vai para a pagina 1
        },
      ),
    );
  }
}
