import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final String imageUrl;
  final double size;
  final String name;

  const User({Key key, this.imageUrl, this.size, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://cabanadoleitor.com.br/wp-content/uploads/2018/12/Instagram-Reaches-500Million-Users-la.jpg"))),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(imageUrl))),
                ),
              ),
            ),
          ),
        ),
        name != null
            ? Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              )
            : Container()
      ],
    );
  }
}
