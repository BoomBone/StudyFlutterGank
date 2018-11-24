import 'package:flutter/material.dart';

///侧滑栏
class IndexDrawerPage extends StatelessWidget {
  String email, name, profileimg, background;

  IndexDrawerPage({this.background, this.profileimg, this.name, this.email});

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        ///头像
        new UserAccountsDrawerHeader(
          accountName: new Text(name),
          accountEmail: new Text(email),
          currentAccountPicture: new CircleAvatar(
            backgroundImage: new AssetImage(profileimg),
          ),
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage(background), fit: BoxFit.cover)),
        )
      ],
    );
  }
}
