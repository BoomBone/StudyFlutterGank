import 'package:flutter/material.dart';
import 'package:flutter_gank/common/GlobalConfig.dart';
import 'package:flutter_gank/page/index/IndexDrawerPage.dart';
import 'package:flutter_gank/page/home/home.dart';
import 'package:flutter_gank/page/classify/classify.dart';
import 'package:flutter_gank/page/mine/mine.dart';

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
  PageController pageController;

  ///底部导航栏图标
  final List<BottomNavigationBarItem> _bottomTabs = <BottomNavigationBarItem>[
    new BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text(GlobalConfig.homeTab),
        backgroundColor: GlobalConfig.colorPrimary),
    new BottomNavigationBarItem(
        icon: Icon(Icons.tune),
        title: Text(GlobalConfig.classyTab),
        backgroundColor: GlobalConfig.colorPrimary),
    new BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text(GlobalConfig.mineTab),
        backgroundColor: GlobalConfig.colorPrimary),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.page);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

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
          title: new Text(title),
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
        //添加底部导航栏
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[MyHomePage(), MyClassifyPage(), MyMinePage()],
          controller: pageController,
          onPageChanged: onPageChanged,
        ),
        bottomNavigationBar: new BottomNavigationBar(
          ///图标
          items: _bottomTabs,
          currentIndex: page,
          fixedColor: GlobalConfig.colorPrimary,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
        ),
      ),
    );
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
      switch (page) {
        case 0:
          title = GlobalConfig.homeTab;
          break;
        case 1:
          title = GlobalConfig.classyTab;
          break;
        case 2:
          title = GlobalConfig.mineTab;
          break;
      }
    });
  }
}
