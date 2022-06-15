import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class adanasayimbeyli2 extends StatefulWidget {
  @override
  _TuzukState createState() => _TuzukState();
}

class _TuzukState extends State<adanasayimbeyli2> {
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
            'https://www.posta.com.tr/yazarlar/filiz-ozkol/temmuz-ayi-burc-yorumlari-2343724')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      // debugPrint(document.querySelector("table").outerHtml);
      objText = document.querySelector('#author-column-detail').outerHtml;
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
      appBar: AppBar(title: Text('AYLIK BURÇ YORUMLARI'), actions: <Widget>[
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
