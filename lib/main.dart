import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/HomeScreenPage.dart';

void main() => runApp(Pokedex());

class Pokedex extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(primaryColor: Colors.lightBlueAccent),
      home: HomeScreenPage(),
    );
  }
}
