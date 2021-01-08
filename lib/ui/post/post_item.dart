import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/utils/CircleTabIndicator.dart';

class PostItem extends StatefulWidget {
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> with TickerProviderStateMixin {
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
    return Column(
      children: <Widget>[
        Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
            ),
            margin: EdgeInsets.all(12.0),
            elevation: 6.0,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                child: Column(
                  children: <Widget>[
                    showPostImages(),
                    showIdicator(),
                    Row(
                        children: <Widget>[
                           Expanded(
                             flex: 7,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Padding(
                                   padding: const EdgeInsets.only(right: 10.0),
                                   child: Text(
                                      "hfjhfuwuwrzxczdxfsfsdfscxvcxcvcxvxcvxcvxcvxcvxcvxcvxcvxcvvcxvxcvxcvdfsdfsdfsdfsdfdsfsfdsdfsdfxfcvbcxbxcbxcvbxcvxcvxvcsdfcsdfsdfsdfd",
                                      maxLines: 3,
                                      softWrap: true,
                                     overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontSize: 18.0),
                                    ),
                                 ),
                               ],
                             ),
                           ),

                          SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/ic_share.jpeg'))
                        ],
                      ),

                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("2021-01-05 15:15:15"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  Widget showIdicator() {
    return Container(
        child: MyTabPageSelector(
      controller: tabController,
      color: Colors.white,
      //borderColor: Colors.blue     you can set your own color if you want
      selectedColor: Colors.black,
    ));
  }

  Widget showPostImages() {
    return Container(
      height: 200.0,
      width: 800,
      child: TabBarView(
        controller: tabController,
        children: <Widget>[
          Center(
            child: Image(image: AssetImage("assets/appicon.jpeg")),
          ),
          Center(
            child: Image(image: AssetImage("assets/appicon.jpeg")),
          ),
          Center(
            child: Image(image: AssetImage("assets/appicon.jpeg")),
          ),
          Center(
            child: Image(image: AssetImage("assets/appicon.jpeg")),
          ),
        ],
      ),
    );
  }
}
