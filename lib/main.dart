import 'package:flutter/material.dart';
import 'package:flutter_gank/common/GlobalConfig.dart';
import 'package:flutter_gank/page/Application.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Gank',
      theme: new ThemeData(
        primarySwatch: GlobalConfig.colorPrimary
      ),
      ///添加主页面
      home: new ApplicationPage(),
    );
  }
}
