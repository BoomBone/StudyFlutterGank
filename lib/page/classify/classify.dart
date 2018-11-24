import 'package:flutter/material.dart';

class ClassifyPage extends StatelessWidget {

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
      home: new MyClassifyPage(),
    );
  }
}

class MyClassifyPage extends StatefulWidget {
  MyClassifyPage({Key key}) : super(key: key);
  @override
  _MyClassifyPageState createState() => new _MyClassifyPageState();
}

class _MyClassifyPageState extends State<MyClassifyPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Text("classify"),
      ),

    );
  }
}