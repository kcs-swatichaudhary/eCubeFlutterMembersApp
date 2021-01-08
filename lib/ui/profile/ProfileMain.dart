import 'package:flutter/material.dart';
import 'package:flutter_app/ui/profile/personal_view.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'ContactScreen.dart';
import 'MemberShip_view.dart';
import 'ProfilePage.dart';
import 'SubmemberShip_view.dart';

class ShowMemberData extends StatefulWidget {
  @override
  _ShowMemberDataState createState() => _ShowMemberDataState();
}

class _ShowMemberDataState extends State<ShowMemberData>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            onPressed: () {
              _navigateAndDisplaySelection(context);
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/profilebg.jpeg",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg'),
                            radius: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'NON MEMBER DEBIT ACCOUNT ZERO',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '#z99 | AHMEDABAD,MALE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: new DefaultTabController(
                      length: 4,
                      child: TabBar(
                        controller: tabController,
                        tabs: <Widget>[
                          Tab(
                            text: "PERSONAL",
                          ),
                          Tab(
                            text: "CONTACT",
                          ),
                          Tab(
                            text: "MEMBERSHIP",
                          ),
                          Tab(
                            text: "SUBMEMBERS",
                          )
                        ],
                        indicatorColor: Colors.deepOrangeAccent,
                      )),
                ),
              ),
            ],
          ),
          Container(
            height:MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Center(child: PersonalScreen()),
                Center(child: ContactScreen()),
                Center(child: MemberShipScreen()),
                Center(child: SubmemberShipScreen()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_navigateAndDisplaySelection(BuildContext context)  {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
}



