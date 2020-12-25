// ignore: camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/ui/post/Activity.dart';
import 'package:flutter_app/ui/post/HomePage.dart';
import 'package:flutter_app/ui/post/Invoice.dart';

// ignore: camel_case_types
class pageRoutes {
  static const String home = HomePage.routeName;
  static const String invoice = Invoice.routeName;
  static const String activity = Activity.routeName;

  static getRoutes(BuildContext context) {
    return {
      home: (context) => HomePage(),
      invoice: (context) => Invoice(),
      activity: (context) => Activity()
    };
  }
}
