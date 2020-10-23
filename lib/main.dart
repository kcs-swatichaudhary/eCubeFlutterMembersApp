import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Theme(
            data: new ThemeData(
                brightness: Brightness.dark,
                inputDecorationTheme: new InputDecorationTheme(
                  // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                  labelStyle: new TextStyle(color: Colors.grey, fontSize: 15.0),
                )),
            isMaterialAppTheme: true,
            child: SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                  ),
                  new Image(image: AssetImage("assets/appicon.jpeg")),
                  new Text("Sign into access your Membership Account!"),
                  new Container(
                    padding: const EdgeInsets.all(25.0),
                    child: new Form(
                      autovalidate: true,
                      child: new Theme(
                        data: new ThemeData(
                            brightness: Brightness.dark,
                            primarySwatch: Colors.deepOrange,
                            inputDecorationTheme: new InputDecorationTheme(
                                labelStyle: new TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.00))),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Form(
                                child: new Column(
                              children: <Widget>[
                                new TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: new InputDecoration(
                                      labelText: "Enter Email",
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.deepOrange))),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: new InputDecoration(
                                      labelText: "Enter Password",
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.red))),
                                  obscureText: true,
                                  keyboardType: TextInputType.text,
                                ),
                                new Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                ),
                                new MaterialButton(
                                  child: Text("LOGIN",style: TextStyle(fontSize: 18.0),),
                                  height: 50.0,
                                  minWidth: double.infinity,
                                  color: Colors.deepOrangeAccent,
                                  splashColor: Colors.teal,
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                                new Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                ),
                                new Text("Forgot Password?"),
                                new Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                     children: <Widget>[
                                       new Text("Terms Of Use",style: TextStyle(fontSize: 15.0),),
                                     ],
                                    ),
                                    Container(
                                      width: 1,
                                      height: 35.0,
                                      color: Colors.grey,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        new Text("Privacy Policy",style: TextStyle(fontSize: 15.0),),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ))

                            /* new MaterialButton(
                              height: 50.0,
                              minWidth: 450.0,
                              color: Colors.deepOrange,
                              splashColor: Colors.teal,
                              textColor: Colors.white,
                              child: new Icon(FontAwesomeIcons.signInAlt),
                              onPressed: () {},
                            )*/
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
