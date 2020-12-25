import 'package:flutter/material.dart';
import 'package:flutter_app/pageRoutes.dart';

class NewDrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //   // appBar: AppBar(
    //   //   title: new Text("New App drawer"),
    //   //   elevation: defaultTargetPlatform == TargetPlatform.android ? 0.5 : 0.0,
    //   // ),
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("swati chaudhary"),
            accountEmail: new Text("swati.chaudhary@kcsitglobal.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black,
              child: new Text(
                "S",
                style: new TextStyle(fontSize: 24.00),
              ),
            ),
            otherAccountsPictures: <Widget>[
              new CircleAvatar(
                backgroundColor: Colors.black,
                child: new Text(
                  "C",
                  style: new TextStyle(fontSize: 24.00),
                ),
              )
            ],
          ),
          new ListTile(
              title: new Text("Home"),
              trailing: Icon(Icons.home),
              onTap: () => Navigator
                  .pushReplacementNamed(context,pageRoutes.home)),
          /* onTap: () {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed("/a");
    }
    ),*/
          new ListTile(
              title: new Text("Activity"),
              trailing: Icon(Icons.accessibility),
              onTap: () => Navigator
                  .pushReplacementNamed(context,pageRoutes.activity)),
          new ListTile(
              title: new Text("Invoice"),
              trailing: Icon(Icons.file_download),
              onTap: () => Navigator
                  .pushReplacementNamed(context,pageRoutes.invoice)),
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
    body:
    new Container(
      child: Center(
        child: new Text(("Hello Drawer")),
      ),
    );
    // );
  }
}
