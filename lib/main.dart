import 'package:flutter/material.dart';
import 'package:instagram/themes/theme.dart';

import 'home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: theme(),
      home: Home(),
    );
  }
}
