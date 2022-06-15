import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class adanasayimbeyli6 extends StatefulWidget {
  @override
  _TuzukState createState() => _TuzukState();
}

class _TuzukState extends State<adanasayimbeyli6> {
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
            'https://www.nazbayatli.com/post/kari%CC%87yer-ve-meslek-g%C3%B6stergeleri%CC%87-anali%CC%87zi%CC%87')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      // debugPrint(document.querySelector("table").outerHtml);
      objText = document.querySelector('._6SyeS').outerHtml;
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
      appBar: AppBar(title: Text('KARİYER ASTROLOJİSİ'), actions: <Widget>[
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
