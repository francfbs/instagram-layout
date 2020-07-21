import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    backgroundColor: Colors.red,
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    primaryIconTheme: IconThemeData(color: Colors.black),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
