import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final pokedexTheme = ThemeData(
  primaryColor: Colors.lightBlueAccent,
  selectedRowColor: Colors.lightBlueAccent,
  unselectedWidgetColor: Colors.white,
);

final pokedexDarkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.deepPurple,
    selectedRowColor: Colors.blueGrey,
    unselectedWidgetColor: Colors.grey,
    cupertinoOverrideTheme: CupertinoThemeData(
      barBackgroundColor: Colors.amber,
      primaryContrastingColor: Colors.grey,
      primaryColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ));
