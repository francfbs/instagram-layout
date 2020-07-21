import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar mainAppBar() {
  return AppBar(
    backgroundColor: Colors.white, //new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(FontAwesomeIcons.camera),
    title: Image(
      image: AssetImage("assets/insta_logo.png"),
      height: 35,
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12),
        child: Icon(FontAwesomeIcons.paperPlane),
      )
    ],
  );
}
