import 'package:flutter/material.dart';
import 'package:flutter_gank/common/GlobalConfig.dart';

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
      home: Scaffold(
        appBar: new AppBar(
          title:new Text(title),
        ),
        drawer: new Drawer(
        ),
      ),
    );
  }
}
