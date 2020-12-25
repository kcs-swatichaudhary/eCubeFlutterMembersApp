import 'package:flutter/material.dart';
import 'package:flutter_app/ui/DrawerItem.dart';
// import 'package:flutter_app/ui/post/post_view.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      ),
      // drawer: HomePage(),
      body: Center(child: Text('Home'),),
    );
  }
}
