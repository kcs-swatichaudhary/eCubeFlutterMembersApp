import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/NewDarwerHome.dart';

// import 'package:flutter_app/ui/post/post_view.dart';
import 'package:dio/dio.dart';

import '../CustomWidget.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      drawer: NewDrawerHome(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      /* drawer: PostScreen(),
      body: Center(child: Text("Home"),),*/
      body: Container(
        child: _PostList(),
      ),
      resizeToAvoidBottomInset: false,

    );
  }
}

Widget _buildList(BuildContext context) {
  List user = [
    {
      'name': 'foo',
      'age': '21',
    },
    {
      'name': 'swati',
      'age': '22',
    },
    {
      'name': 'foo',
      'age': '21',
    },
    {
      'name': 'foo',
      'age': '21',
    },
    {
      'name': 'swati',
      'age': '22',
    },
    {
      'name': 'foo',
      'age': '21',
    },
  ];
  return GridView.builder(

      gridDelegate: SliverGridD0elegateWithFixedCrossAxisCount(crossAxisCount: 3,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,

   ),
      scrollDirection: Axis.horizontal,
      itemCount: user.length,
      itemBuilder: (context, index) {
        /*  return Container(
            color: index %2==0?Colors.green:Colors.red,
            child: Center(child: Text('${user[index]['name']}')
            ),
          );*/
        return new CustomWidget(date:'${user[index]['name']}',

          content: '${user[index]['age']}',
          trailingIconOne: new Icon(Icons.share, color: Colors.blueAccent,),
          trailingIconTwo: new Icon(
            Icons.favorite, color: Colors.redAccent,),);
      });
}

class _PostList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LisState();
}

class LisState extends State {
  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
}
