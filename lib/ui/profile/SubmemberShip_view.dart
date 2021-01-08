import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmemberShipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 20, itemBuilder: (context, index) => showSubmemberList()),
    );
  }

  Widget showSubmemberList() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "VIKASH KHADANCHI",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text("DOB:27 jan 1999 "),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text("Relation:self"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text("MOB:704899999"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text("Email:swati@362"),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 200.0,
                    height: 110.0,
                    child: new Image.asset('assets/appicon.jpeg'),
                  ),
                  SizedBox(
                      width: 40.0,
                      height: 20.0,
                      child: new Image.asset('assets/ic_share.jpeg'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
