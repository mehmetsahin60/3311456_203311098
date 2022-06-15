// Utilizar para contenido dinamico de acuerdo  a la cantidad de elementos

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key, Padding child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista View'),
      ),
      body: Center(
        child: _lista(),
      ),
    );
  }
}

Widget _lista() {
  List<String> list = ['Carros', 'Motos', 'Aviones', 'Barcos'];

  return Container(
    child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text('item numero $index, contenido:  ${list[index]}'));
        }),
  );
}
