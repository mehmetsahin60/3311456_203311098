import 'package:custom_scroll_view/pages/home.dart';
import 'package:flutter/material.dart';

class MyApphome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burç Rehberi',
      home: HomePage(),
      //home: HomeDos(),
    );
  }
}
