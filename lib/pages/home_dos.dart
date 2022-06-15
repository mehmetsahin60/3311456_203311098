import 'package:flutter/material.dart';

import './custom_scroll_view.dart';
import '../pages/sized_overflow_box.dart';
import 'custom_scroll_view.dart';
import 'main_drawer.dart';

class HomeDos extends StatefulWidget {
  @override
  _HomeStateDos createState() => _HomeStateDos();
}

class _HomeStateDos extends State<HomeDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        drawer: MainDrawer(),
        body: _home(context));
  }
}

Widget _home(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        child: Icon(Icons.pages),
        onPressed: () {
          //Navigator.pushNamed(context, "botones");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return WidgetCustomScrollView();
            }),
          );
        },
      ),
      SizedBox(
        width: 10,
      ),
      FlatButton(
        child: Icon(Icons.list),
        onPressed: () {
          // Navigator.pushNamed(context, "listas");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AspectB2();
            }),
          );
        },
      ),
    ],
  );
}
