import 'package:flutter/material.dart';
import 'package:flutter_app/pageRoutes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constant.dart';

class NewDrawerHome extends StatefulWidget {
  @override
  _NewDrawerHomeState createState() => _NewDrawerHomeState();
}

class _NewDrawerHomeState extends State<NewDrawerHome> {
  String memberFirstName;
  String memberLastName;
  String memberProfileImage;

  @override
  void initState() {
    super.initState();
    _getPost();
  }

  void _getPost() async {
    memberFirstName = await getStringValuesSF();
    memberLastName = await getStringValuesLname();
    memberProfileImage = await getStringValuesUImage();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey.shade500),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(memberProfileImage),
                  radius: 30.0,
                ),
                Flexible(child: Row(
                /*  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,*/
                  children: <Widget>[
                    Text(
                      '$memberFirstName' + '$memberLastName',
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                      softWrap: false,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 15.0),
                    ),
                    /*SizedBox(height: 10.0),
                    Text(
                      'view Profile',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 10.0),
                    ),*/
                  ],
                ) ,fit: FlexFit.loose,)

              ],
            ),
          ),
          new ListTile(
              title: new Text("Home"),
              trailing: Icon(Icons.home),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, pageRoutes.home)),
          new ListTile(

              title: new Text("Activity"),
              trailing: Icon(Icons.accessibility),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, pageRoutes.activity)),
          new ListTile(
              title: new Text("Invoice"),
              trailing: Icon(Icons.file_download),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, pageRoutes.invoice)),
          new ListTile(
            title: new Text("statement"),
            trailing: Icon(Icons.insert_drive_file),
          ),
          new ListTile(
            title: new Text("Movie Booking"),
            trailing: Icon(Icons.movie),
          ),
          new ListTile(
            title: new Text("Event"),
            trailing: Icon(Icons.event),
          ),
          new ListTile(
            title: new Text("Packages Subscription"),
            trailing: Icon(Icons.subscriptions),
          )
        ],
      ),
    );
  }

  Future<String> getStringValuesSF() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString(SP_MEMEBER_FNAME);
    return stringValue;
  }

  Future<String> getStringValuesLname() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString(SP_MEMEBER_LNAME);
    return stringValue;
  }

  Future<String> getStringValuesUImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString(SP_MEMEBER_IMAGE);
    return stringValue;
  }
}
