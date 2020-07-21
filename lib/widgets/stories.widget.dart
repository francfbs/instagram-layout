import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/user-add-storie.widget.dart';
import 'package:instagram/widgets/user.widget.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.3))),
      child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Container(
            height: 77,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 26,
                ),
                UserAddStorie(
                  imageUrl:
                      "https://s2.best-wallpaper.net/wallpaper/iphone/1704/Curly-hair-girl-face-eyes_iphone_320x480.jpg",
                ),
                SizedBox(
                  width: 20,
                ),
                User(
                  name: "isisvalverde",
                  size: 60,
                  imageUrl:
                      "https://uploads.metropoles.com/wp-content/uploads/2019/09/12183011/isis-valverde12.jpg",
                ),
                SizedBox(
                  width: 18,
                ),
                User(
                  name: "billgates",
                  size: 60,
                  imageUrl:
                      "https://www.itreseller.ch/imgserver/artikel/Personen/2020/mid/Bill_Gates_200316_090318.jpg",
                ),
                SizedBox(
                  width: 18,
                ),
                User(
                  name: "keanureeves",
                  size: 60,
                  imageUrl:
                      "http://br.web.img2.acsta.net/c_215_290/pictures/17/02/06/17/01/343859.jpg",
                ),
                SizedBox(
                  width: 18,
                ),
                User(
                  name: "barackobama",
                  size: 60,
                  imageUrl:
                      "https://exame.com/wp-content/uploads/2020/05/obama-e1589812349634-1.jpg?quality=70&strip=info&resize=680,453",
                ),
                SizedBox(
                  width: 18,
                ),
                User(
                  name: "kimkardashian",
                  size: 60,
                  imageUrl:
                      "https://s2.glbimg.com/lUxnHLTdO1YSwEpxESgTryCGRsM=/smart/e.glbimg.com/og/ed/f/original/2020/02/18/captura_de_tela_2020-02-18_as_08.31.50.png",
                )
              ],
            ),
          )),
    );
  }
}
