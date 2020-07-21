import 'package:flutter/material.dart';

class UserSingle extends StatelessWidget {
  final String imageUrl;
  final double size;

  const UserSingle({Key key, this.imageUrl, this.size = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.fill, image: NetworkImage(imageUrl))),
    );
  }
}
