import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pageRoutes.dart';
import 'package:flutter_app/ui/login/login_view.dart';
import 'package:flutter_app/ui/post/HomePage.dart';
import 'package:flutter_app/ui/post/Invoice.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        accentColor: Colors.deepOrange,
      ),
      home: LoginScreen(title: appName,),
    /*  routes: <String, WidgetBuilder>{
        "/a":(BuildContext context)=>new Invoice("Invoice"),
    }*/
    // routes: pageRoutes.getRoutes(context),
    //   initialRoute: HomePage.routeName,
      // routes: pageRoutes.home(context)=>PostScreen(),
    );
  }
}



