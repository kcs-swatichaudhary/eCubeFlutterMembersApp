
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/colors.dart';

class CM {
  static Future<void> ackAlert(BuildContext context, String str) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(str),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Ok',
                style: TextStyle(color: colorNavigationBar),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}
