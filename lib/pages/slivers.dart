import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class adanasayimbeyli1 extends StatefulWidget {
  @override
  _TuzukState createState() => _TuzukState();
}

class _TuzukState extends State<adanasayimbeyli1> {
  String _htmlveri = "";
  String objText = "";

  @override
  initState() {
    super.initState();
    _istek();
  }

  Future _istek() async {
    _htmlveri = "";
    objText = "";
    setState(() {});
    await http
        .get(
            'https://www.ntv.com.tr/galeri/astroloji-ve-burclar/haftalik-burc-yorumlari-21-haziran-2001-27-haziran-2021-haftasi-burcunuzu-neler-bekliyor,xT0WB7uCC0eIYx6ucRTcGQ/dlH_mujm9ESJ2laJdTQfXA')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      // debugPrint(document.querySelector("table").outerHtml);
      objText = document.querySelector('.category-detail-inner').outerHtml;
      //  objText.replaceAll('\n', '').replaceAll('\t', '').replaceAll(' ', '');
      /*  debugPrint(objText);
      RegExp arama = new RegExp('<td class="text-center dgtc">(.*?)</td>');
      Match eslesen = arama.firstMatch(objText);
      String yeni = eslesen.group(1);*/
      setState(() {});
      //debugPrint(yeni);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HAFTALIK BURÇ YORUMLARI'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _istek,
        )
      ]),
      body: Center(
        child: _htmlveri.length > 0
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Html(
                      data: objText
                          .replaceAll(RegExp(r'\(.*\)'), '')
                          .replaceAll("LİMİTED ŞİRKETİ", "Ltd.Şti.")
                          .replaceAll("ANONİM ŞİRKETİ", "A.Ş.")),
                ),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
