import 'package:flutter/material.dart';
import 'dart:ui';

import '../../NewDarwerHome.dart';

// import 'package:flutter_app/ui/post/post_view.dart';
class Activity extends StatelessWidget {
  static const String routeName='/Activity';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NewDrawerHome(),
      appBar: AppBar(

        title: Text("Activity"),
      ),
      // drawer: PostScreen(),
      body: Center(
        child: Text("Activity"),
      ),
    );
  }
}
