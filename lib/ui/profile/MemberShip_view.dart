import 'package:flutter/material.dart';
class MemberShipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("MEMBRSHIP NAME",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto',
                            color: Colors.grey,
                            fontSize: 12.0),),
                        Text("ORDINARY PLAN",style: TextStyle(
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
                        Text("MEMBER CODE",style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto',
                            color: Colors.grey,
                            fontSize: 12.0),),
                        Text("z99",style: TextStyle(
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
