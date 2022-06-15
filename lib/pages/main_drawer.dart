import 'package:flutter/material.dart';

import '../pages/custom_scroll_view.dart';
import '../pages/sized_overflow_box.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('CustomScrollView', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return WidgetCustomScrollView();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('SizedOverflowBox', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AspectB2();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
