import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/models/publication.dart';
import 'package:instagram/widgets/user.widget.dart';
import 'package:instagram/widgets/user-comment.widget.dart';

class Publications extends StatelessWidget {
  final Publication publication;
  final User user;

  const Publications({Key key, this.publication, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  User(
                    imageUrl: publication.userImageUrl,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    publication.userName,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Container(
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Image.network(
            publication.publicationImageUrl,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 22,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    FontAwesomeIcons.comment,
                    size: 22,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    FontAwesomeIcons.paperPlane,
                    size: 22,
                  ),
                ],
              ),
              Icon(
                FontAwesomeIcons.bookmark,
                size: 22,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 4, bottom: 2),
          child: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 11, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'Liked by '),
                  TextSpan(
                      text: 'Thousands ',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: 'and '),
                  TextSpan(
                      text: 'andrewstod',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 11, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'kimkardashian ',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: 'NICE PARTY yeahhh!!'),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 16, bottom: 10),
          child: UserComment(
            user: user,
          ),
        )
      ],
    );
  }
}
