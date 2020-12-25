// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_app/fragments/first_fragment.dart';
import 'package:flutter_app/fragments/second_fragment.dart';
import 'package:flutter_app/fragments/third_fragment.dart';
class DrawerItem {
  var title = "";
  IconData icon;
  DrawerItem(String s, Icon icon);
}

class HomePage extends StatefulWidget {
  var mDrawerListItem = [
    DrawerItem("Home", Icon(Icons.home)),
    DrawerItem("Activity", Icon(Icons.accessibility_new)),
    DrawerItem("Invoice", Icon(Icons.input))
  ];

  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _drawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstFragment();
      case 1:
        return SecondFragment();
      case 2:
        return ThirdFragment();
      default:
        return Text("error");
    }
  }

  _setItemSelected(int index) {
    setState(() => _drawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> drawerList = [];
    for (int i = 0; i < widget.mDrawerListItem.length; i++) {
      var d = widget.mDrawerListItem[i];
      drawerList.add(new ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text(d.title),
        selected: i == _drawerIndex,
        onTap: _setItemSelected(i),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.mDrawerListItem[_drawerIndex].title),
      ),
      drawer: Drawer(
          child: new Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text("Swati Chaudhary"),
              accountEmail: new Text("swati.chaudhary@kcsitglobal.com")),
          new Column(children: drawerList)
        ],
      )),
      body: _getDrawerItemWidget(_drawerIndex),
    );
  }
  // Widget  createDrawerHeader() {
  //   return DrawerHeader(
  //       margin: EdgeInsets.zero,
  //       padding: EdgeInsets.zero,
  //       decoration: BoxDecoration(
  //           image: DecorationImage(
  //               fit: BoxFit.none,
  //               image:  AssetImage('assets/appicon.jpeg'))),
  //       child: Stack(children: <Widget>[
  //         Positioned(
  //             bottom: 12.0,
  //             left: 16.0,
  //             child: Text("Welcome to Flutter",
  //                 style: TextStyle(
  //                     color: Colors.deepOrange,
  //                     fontSize: 20.0,
  //                     fontWeight: FontWeight.w500))),
  //
  //       ]));
  //
  // }
}
