import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:core';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ui/login/LoginResponseModels.dart';
import 'package:flutter_app/ui/post/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../../CM.dart';
import '../../PostMethord.dart';
import '../../constant.dart';
import '../../getMethord.dart';
import '../Album.dart';

// import 'package:flutter_app/ui/post/post_view.dart';
class LoginScreen extends StatefulWidget {



  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var isLoading = false;
  var _formKey = new GlobalKey<FormState>();
  var _mobileTextController = new TextEditingController();
  var _passwordTextController = new TextEditingController();
  bool _autoValidate = false;
  bool _validate = false;
  String _email;
  String _mobile;
  String strPassCode = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                ),
                new Image(image: AssetImage("assets/appicon.jpeg")),
                new Text("Sign into access your Membership Account!"),
                new Container(
                  margin: new EdgeInsets.all(15.0),
                  child: new Form(
                    key: _formKey,
                    autovalidate: _validate,
                    child: FormUI(),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  /*Future webCallLogin() async {
    setState(() {
      isLoading = true;
    });
    GetRequestArr(
        API_GET_LOGIN +
            '?' +
            WS_STR_MEMBERCODE +
            '=' +
            _mobileTextController.text.toString() +
            '&' +
            WS_STR_PASSWORD +
            '=' +
            strPassCode, context)
        .then((data) {
      print(data);
      var result = data["GetValidateLoginResult"];
      if (data[ApiStatus] == ApiSuccess) {
        String user = jsonEncode(LoginResponseModels.fromJson(result[0]));
        _onSaveData(user);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        print(user+"LoggedInUser");
      } else {
        CM.ackAlert(
            _formKey.currentState.context, data[ApiError]);
      }
      setState(() {
        isLoading = false;
      });
    });
  }*/
  Future<LoginResponseModels> createAlbum(String memberCode,
      String password) async {
    final http.Response response = await http.get(
      API_GET_LOGIN + 'strMemberCode=$memberCode&strWebPassword=$password',
      headers: <String, String>{
        'Content-Type': 'application/json',
        'SecurityKey': 'RXZlbnRFbnRyeQ=='
      },
    );

    if (response.statusCode == 200) {
      try {
        if (jsonDecode(response.body) != null) {
          var data = jsonDecode(response.body)['Result'];
          _onSaveData(data['GetMemberLogin'][0]);
          print(data['GetMemberLogin'][0]);
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomePage()));
        }

        else {
          // If the server did not return a 201 CREATED response,
          // then throw an exception.      throw Exception('Failed to load album');
        }
      }
      catch(e){
        print(e);
      }
    }
  }

  void _onSaveData(data) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(SP_MEMEBER_ID, data['MemberId']);
    pref.setString(SP_MEMEBER_FNAME, data['FName']);
    pref.setString(SP_MEMEBER_LNAME, data['LName']);
    pref.setString(SP_MEMEBER_IMAGE, data['ImageName']);
    pref.setBool(IS_LOGIN, true);
  }

  void login() {
    if (_formKey.currentState.validate()) {
      createAlbum(_mobileTextController.text, _passwordTextController.text);
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  Widget FormUI() {
    return new Column(
      children: <Widget>[

        Container(
          child: new TextFormField(
            controller: _mobileTextController,
            decoration: new InputDecoration(hintText: "Enter Email",focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange)
            )),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String val) {
              _email = val;
            },
            /*  controller: _text,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        validator: (String arg) {
                                          if(arg.length < 3)
                                            return 'Name must be more than 2 charater';
                                          else
                                            return null;
                                          },*/
          ),
        ),
        Container(
          padding: EdgeInsets.only(top:35.0),
          child: new TextFormField(
            controller: _passwordTextController,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: new InputDecoration(hintText: "Enter Password",focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange)
            )),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            onSaved: (String val) {
              strPassCode = val;
            },
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 20.0),
        ),
        new MaterialButton(
          child: Text(
            "LOGIN",
            style: TextStyle(fontSize: 18.0),
          ),
          height: 50.0,
          minWidth: double.infinity,
          color: Colors.deepOrangeAccent,
          splashColor: Colors.teal,
          textColor: Colors.white,
          onPressed: login,
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
                new Text(
                  "Terms Of Use",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            Container(
              width: 1,
              height: 35.0,
              color: Colors.grey,
            ),
            Column(
              children: <Widget>[
                new Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}