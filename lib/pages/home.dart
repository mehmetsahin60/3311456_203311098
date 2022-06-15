import 'package:custom_scroll_view/pages/alert_page.dart';
import 'package:custom_scroll_view/pages/aspect_baseline.dart';
import 'package:custom_scroll_view/pages/cupertino_slive_nav_bar.dart';
import 'package:custom_scroll_view/pages/custom_single_child_layout.dart';
import 'package:custom_scroll_view/pages/grid_view.dart';
import 'package:custom_scroll_view/pages/input_page.dart';
import 'package:custom_scroll_view/pages/offstage.dart';
import 'package:custom_scroll_view/pages/slivers.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'custom_scroll_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  List<ScreenHiddenDrawer> items = List();

  @override
  void initState() {
    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'ANA SAYFA',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.teal[300],
        ),
        WidgetCustomScrollView()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'GÜNLÜK BuRÇ YORUMLARI',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.orange,
        ),
        adanasayimbeyli()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HAFTALIK BURÇ YORUMLARI',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.orange,
        ),
        adanasayimbeyli1()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'AYLIK BURÇ YORUMLARI',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.orange,
        ),
        adanasayimbeyli2()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'YILLIK BURÇ YORUMLARI',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.orange,
        ),
        adanasayimbeyli3()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'İLİŞKİ ASTROLOJİSİ',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.orange,
        ),
        adanasayimbeyli4()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'ÇOCUK ASTROLOJİSİ',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.blue[900],
        ),
        adanasayimbeyli5()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'KARİYER ASTROLOJİSİ',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.blue[900],
        ),
        adanasayimbeyli6()));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HAKKIMIZDA',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0),
          colorLineSelected: Colors.blue[900],
        ),
        MyAppp()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.lightBlue[900],
      backgroundColorAppBar: Colors.cyan[300],
      screens: items,
      // typeOpen: TypeOpen.FROM_RIGHT,
      // disableAppBarDefault: false,
      enableScaleAnimation: true,
      enableCornerAnimation: true,
      slidePercent: 80.0,
      //    verticalScalePercent: 80.0,
      //    contentCornerRadius: 10.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    elevationAppBar: 4.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}
