import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pageRoutes.dart';
import 'package:flutter_app/ui/login/login_view.dart';
import 'package:flutter_app/ui/post/HomePage.dart';
import 'package:flutter_app/ui/post/Invoice.dart';
import 'package:flutter_app/ui/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, //or set color with: Color(0xFF0000FF)
    ));
    return WillPopScope(
      onWillPop: () async {
        if (_key.currentState.isDrawerOpen) {
          Navigator.of(context).pop();
          return false;
        }
        return true;
      },
        child:
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: appName,
          theme: ThemeData(
            // Define the default brightness and colors.
              brightness: Brightness.light,
              primaryColor: Colors.deepOrangeAccent,
              accentColor: Colors.black,
              appBarTheme: AppBarTheme(
                  color: Colors.white,
                  iconTheme: IconThemeData(color: Colors.black),
                  textTheme: TextTheme(
                      title: TextStyle(
                          color: Colors.black,
                          fontFamily: "robot",
                          fontSize: 18,
                          fontWeight: FontWeight.w600)))),
          // home: LoginScreen(title: appName,),
          home: SplashScreen(),
          /*  routes: <String, WidgetBuilder>{
        "/a":(BuildContext context)=>new Invoice("Invoice"),
    }*/
          // routes: pageRoutes.getRoutes(context),
          //   initialRoute: HomePage.routeName,
          // routes: pageRoutes.home(context)=>PostScreen(),
        )
    );


  }
}
