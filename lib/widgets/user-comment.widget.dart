import 'package:flutter/material.dart';
import 'package:instagram/widgets/user-single.widget.dart';
import 'package:instagram/widgets/user.widget.dart';

class UserComment extends StatelessWidget {
  final User user;

  const UserComment({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        UserSingle(
          size: 28,
          imageUrl: user.imageUrl,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "Add a comment...",
          style: TextStyle(fontSize: 11, color: Colors.black38),
        )
      ],
    );
  }
}
