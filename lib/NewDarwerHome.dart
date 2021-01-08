import 'package:flutter/material.dart';
import 'package:flutter_app/pageRoutes.dart';
import 'package:flutter_app/ui/homePage.dart';
import 'package:flutter_app/ui/post/HomePage.dart';
import 'package:flutter_app/ui/profile/ProfileMain.dart';
import 'package:flutter_app/ui/profile/ProfilePage.dart';
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
    List<NavgationItemsModel> data = new List<NavgationItemsModel>();
    data.add(NavgationItemsModel("MEMBERAREA", Icons.add));
    data.add(NavgationItemsModel("BOOKING", Icons.add));
    data.add(NavgationItemsModel("MEMBER AREA", Icons.add));
    data.add(NavgationItemsModel("CLUBFACILTIES", Icons.add));
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/bg_nav_drawer.jpeg"),
                fit: BoxFit.cover)),
        child: new ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                child: Container(
                  margin: EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(memberProfileImage),
                        radius: 30.0,
                      ),
                      Flexible(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Wrap(
                            /*  mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,*/
                            direction: Axis.horizontal, //default
                            children: <Widget>[
                              Text(
                                '$memberFirstName' + '$memberLastName',
                                overflow: TextOverflow.visible,
                                softWrap: true,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 14.0),
                              ),
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    'view Profile',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 12.0),
                                  ),
                                ),
                                onTap: () {
                                  _navigateAndDisplaySelection(context);
                                }, // Handle your callback
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
           Column(
              children: <Widget>[
                buildListTileWithoutColor(
                    icon: "assets/ic_home.jpeg",
                    text: "Home",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                createDrawerBodyItem(icon: Icons.home, text: "MEMBER AREA"),
                buildListTileWithoutColor(
                    icon: "assets/ic_activity.jpeg",
                    text: "Activity",
                    onTap: () =>  Navigator.pushReplacement(
                      context,


























































































































































































































































































































                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                buildListTileWithoutColor(
                    icon: "assets/ic_invoice.png", text: "Invoice",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                buildListTileWithoutColor(
                    icon: "assets/ic_movie.png", text: "Statement",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                createDrawerBodyItem(icon: Icons.home, text: "BOOKING"),
                buildListTileWithoutColor(
                    icon: "assets/ic_movie.png", text: "Movie Booking",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                buildListTileWithoutColor(
                    icon: "assets/ic_event.png", text: "Event",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                buildListTileWithoutColor(
                    icon: "assets/ic_package.jpeg",
                    text: "Packages Subscription",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                buildListTileWithoutColor(
                    icon: "assets/ic_menuservice.png", text: "Service Booking",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                createDrawerBodyItem(
                    icon: Icons.home, text: "CLUB FACILITIES"),
                buildListTileWithoutColor(
                    icon: "assets/ic_amenities.png",
                    text: "Amenities",
                    onTap: () => Navigator.pushReplacementNamed(
                        context, HomePage.routeName)),
                buildListTileWithoutColor(
                    icon: "assets/ic_info.png",
                    text: "Info",
                    onTap: () => Navigator.pushReplacementNamed(
                        context, HomePage.routeName)),
                createDrawerBodyItem(icon: Icons.home, text: "SETTINGS"),
                buildListTileWithoutColor(
                    icon: "assets/ic_changepassword.png", text: "Change Password",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )),
                buildListTileWithoutColor(
                    icon: "assets/ic_logout.png", text: "Logout",
                    onTap: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTileWithoutColor(
      { String text, GestureTapCallback onTap, String icon}) {
    return ListTile(
        title: Row(
      children: <Widget>[
        ImageIcon(new AssetImage(icon),color: Colors.white,),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16.0),

          ),
        ),
      ],

    )
    ,onTap: onTap,);
  }

  Widget createDrawerBodyItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Column(
        children: <Widget>[
          Container(
            width: 1000,
            color: Color(0xff2c2e31),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 8.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            color: Colors.deepOrange,
          ),
        ],
      ),
      onTap: onTap,
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

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShowMemberData()),
    );
    print("profile successfully edit" + result);
  }
}

class NavgationItemsModel {
  String title = "";
  IconData icon;

  NavgationItemsModel(this.title, this.icon);
}
