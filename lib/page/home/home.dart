import 'package:flutter/material.dart';
import 'package:flutter_gank/api/api.dart';
import 'package:flutter_gank/api/http.dart';
import 'package:flutter_gank/model/GankBean.dart';
import 'dart:convert';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text("Home"),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NetUtil.get(Api.TODAY_URL, (data) {
      print("<data>:" + data.toString());
      Category category = Category.fromJson(data);
      print("<desc>:" + category.welfare[0].desc);

    });
  }
}
