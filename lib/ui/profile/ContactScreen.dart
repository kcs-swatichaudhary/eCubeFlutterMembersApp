import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("PHONE (0)",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 12.0),),
                          Text("+704635555",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("PHONE (R)",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 12.0),),
                          Text("+704635555",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("MOBILE",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 12.0),),
                          Text("+704635555",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("FAX",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 12.0),),
                          Text("+7046355GGHHG",style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("EMAIL",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto',
                            color: Colors.grey,
                            fontSize: 12.0),),
                        Text("swati@362",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("WEBSITE",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto',
                            color: Colors.grey,
                            fontSize: 12.0),),
                        Text("www.swati.com",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
