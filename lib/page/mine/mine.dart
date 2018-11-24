import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
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
      home: new MyMinePage(),
    );
  }
}

class MyMinePage extends StatefulWidget {
  MyMinePage({Key key}) : super(key: key);

  @override
  _MyMinePageState createState() => new _MyMinePageState();
}

class _MyMinePageState extends State<MyMinePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text("Mine"),
      ),
    );
  }
}
