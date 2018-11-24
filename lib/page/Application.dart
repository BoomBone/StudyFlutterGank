import 'package:flutter/material.dart';
import 'package:flutter_gank/common/GlobalConfig.dart';
import 'package:flutter_gank/page/index/IndexDrawerPage.dart';

class ApplicationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ApplicationPageState();
  }
}

class _ApplicationPageState extends State<ApplicationPage> {

  int page = 0;
  String title = GlobalConfig.homeTab;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: GlobalConfig.colorPrimary,
      ),
      ///添加主页
      home: Scaffold(
        appBar: new AppBar(
          title:new Text(title),
        ),
        ///添加抽屉栏
        drawer: new Drawer(
          child: new IndexDrawerPage(
            email: GlobalConfig.email,
            name: GlobalConfig.authorNice,
            profileimg: "images/profile_2.jpg",
            background: "images/bg_2.jpg",
          ),
        ),
      ),
    );
  }
}
