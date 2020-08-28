import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Favorite",
        style: Theme.of(context).textTheme.body1,
      ),
    );
  }
}
