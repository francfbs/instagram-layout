import 'package:flutter/material.dart';
import 'package:instagram/models/publication.dart';
import 'package:instagram/widgets/publications.widget.dart';
import 'package:instagram/widgets/stories.widget.dart';
import 'package:instagram/widgets/user.widget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = User(
      name: 'joanadark',
      imageUrl:
          'https://s2.best-wallpaper.net/wallpaper/iphone/1704/Curly-hair-girl-face-eyes_iphone_320x480.jpg',
    );
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Stories(),
        for (var p in publications())
          Publications(
            publication: p,
            user: user,
          ),
      ],
    ));
  }

  List<Publication> publications() {
    var list = new List<Publication>();
    list.add(new Publication(
        userName: "kimkardashian",
        userImageUrl:
            "https://s2.glbimg.com/lUxnHLTdO1YSwEpxESgTryCGRsM=/smart/e.glbimg.com/og/ed/f/original/2020/02/18/captura_de_tela_2020-02-18_as_08.31.50.png",
        publicationImageUrl:
            "https://i2.wp.com/multarte.com.br/wp-content/uploads/2019/02/party-51.jpg?fit=4724%2C2598&ssl=1"));

    list.add(new Publication(
        userName: "billgates",
        userImageUrl:
            "https://www.itreseller.ch/imgserver/artikel/Personen/2020/mid/Bill_Gates_200316_090318.jpg",
        publicationImageUrl:
            "https://c-sirt.org/csirtupload/2019/11/Bill-Gates-revealed-his-secret-project.-It-will-be-a.jpg"));

    return list;
  }
}
