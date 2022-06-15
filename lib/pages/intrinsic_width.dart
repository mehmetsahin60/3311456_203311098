import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntrinsicWidthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IntrinsicWidth'),
        ),
        body: Column(
          children: [
            _nointrinsicWidthView(context),
            _intrinsicWidthView(context),
          ],
        ));
  }

  Widget _intrinsicWidthView(BuildContext context) {
    return IntrinsicWidth(
      stepWidth: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('Usuario 1'),
            leading: Icon(Icons.image),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            title: Text('Usuario 2'),
            leading: Icon(Icons.image),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            title: Text('Usuario 3'),
            leading: Icon(Icons.image),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }

  Widget _nointrinsicWidthView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          title: Text('Usuario 1'),
          leading: Icon(Icons.image),
          trailing: Icon(Icons.send),
        ),
        ListTile(
          title: Text('Usuario 2'),
          leading: Icon(Icons.image),
          trailing: Icon(Icons.send),
        ),
        ListTile(
          title: Text('Usuario 3'),
          leading: Icon(Icons.image),
          trailing: Icon(Icons.send),
        )
      ],
    );
  }
}
