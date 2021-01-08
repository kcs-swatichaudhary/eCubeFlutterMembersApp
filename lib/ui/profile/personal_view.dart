import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "OCCUPATION",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                      fontSize: 12.0),
                ),
                Text(
                  "Bussiness",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "BLOOD GROUP",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 12.0),
                            ),
                            Text(
                              "B+",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize:18.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Text(
                              "DOB",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 12.0),
                            ),
                            Text(
                              "28 Sep 1985",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: 200.0,
                                height: 110.0,
                                child: new Image.asset('assets/appicon.jpeg'),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 9,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "ANNIVERSARY DATE",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                  fontSize: 12.0),
                            ),
                            Text(
                              "28 Sep 1985",
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top:28.0),
                        child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                    width: 40.0,
                                    height: 20.0,
                                    child: new Image.asset('assets/ic_share.jpeg'))
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Text(
                  "OFFICIAL ADDRESS",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                      fontSize: 12.0),
                ),
                Text(
                  "-",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
                Divider(
                  color: Colors.grey,
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
