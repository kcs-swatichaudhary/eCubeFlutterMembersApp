import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/login/login_view.dart';
import 'package:flutter_app/ui/post/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';


class SplashScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => redirectToNextScreen());
  }

  void redirectToNextScreen() {
    if (isLogin() != null) {
      isLogin().then((login) {
        if (login == null) login = false;
        if (login) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      });
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image(image: AssetImage("assets/splash.jpeg")));
  }

  static Future<bool> isLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(IS_LOGIN);
  }
}
