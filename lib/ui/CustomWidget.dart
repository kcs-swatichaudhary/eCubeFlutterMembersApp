import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  String date;
  String content;
  Icon trailingIconOne;

  Icon trailingIconTwo;

  CustomWidget(
      {@required this.date,
      @required this.content,
      @required this.trailingIconOne,
      @required this.trailingIconTwo});

  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: const EdgeInsets.all(10.0),
      child: new Column(

        children: <Widget>[
          new Container(
            alignment: Alignment.topLeft,
            child: new Text(date),
            color: Colors.yellow[200],
          ),
          new Container(
            height: 15.0,
          ),
          Container(alignment: Alignment.topLeft, child: new Text(content)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new IconButton(
                  icon: trailingIconOne,
                  onPressed: () {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Yay!shared')));
                  }),
              new Container(
                width: 10.0,
              ),
              new IconButton(
                  icon: trailingIconTwo,
                  onPressed: () {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Yay!liked')));
                  }),
            ],
          ),
          new Divider(
            height: 15.0,
            color: Colors.red,
          ),

        ],
      ),
    );
  }
}
