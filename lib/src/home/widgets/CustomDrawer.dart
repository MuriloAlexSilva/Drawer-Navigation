import 'package:drawer_navigation/src/home/widgets/HomeController.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StreamBuilder<int>(
          stream: HomeController.of(context).drawerChangeOutput,
          builder: (context, snapshot) {
            return ListView(
              children: [
                ListTile(
                  selected: snapshot.data == 0,
                  //O selected seria para marcar a pagina atual
                  title: Text("Home Page"),
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    HomeController.of(context).drawerChangeInput.add(0);
                  },
                ),
                ListTile(
                  selected: snapshot.data == 1,
                  //O selected seria para marcar a pagina atual
                  title: Text("Favorites"),
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    HomeController.of(context).drawerChangeInput.add(1);
                  },
                ),
                ListTile(
                  selected: snapshot.data == 2,
                  //O selected seria para marcar a pagina atual
                  title: Text("Account"),
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                    HomeController.of(context).drawerChangeInput.add(2);
                  },
                ),
                ListTile(
                  title: Text("Exit"),
                ),
              ],
            );
          }),
    );
  }
}
