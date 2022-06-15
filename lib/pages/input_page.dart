import 'package:flutter/material.dart';

void main() => runApp(MyAppp());

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selçuk YILDIRIM',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HAKKIMIZDA'),
        ),
        body: Center(
          child: Text(
            '\nSelçuk YILDIRIM tarafından yapılmıştır.',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
