import 'package:flutter/material.dart';

class UserAddStorie extends StatelessWidget {
  final String imageUrl;

  const UserAddStorie({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 4,
        ),
        Stack(
          children: <Widget>[
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imageUrl))),
            ),
            Positioned(
              top: 36,
              right: 0,
              left: 40,
              child: CircleAvatar(
                radius: 10,
                child: Icon(
                  Icons.add,
                  size: 12,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 9),
          child: Text(
            "Your story",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
