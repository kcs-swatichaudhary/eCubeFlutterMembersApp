import 'package:flutter/material.dart';
import 'dart:ui';

import '../../NewDarwerHome.dart';

// import 'package:flutter_app/ui/post/post_view.dart';
class Invoice extends StatelessWidget {
 // final  String title;
 static const String routeName='/Invoice';
  // Invoice(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NewDrawerHome(),
      appBar: AppBar(
        title: Text("Invoice"),
      ),
      // drawer: PostScreen(),
      body: Center(
        child: Text("Invoice"),
      ),
    );
  }
}
