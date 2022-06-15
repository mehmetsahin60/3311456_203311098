import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class adanasayimbeyli extends StatefulWidget {
  @override
  _TuzukState createState() => _TuzukState();
}

class _TuzukState extends State<adanasayimbeyli> {
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
            'https://www.ntv.com.tr/galeri/astroloji-ve-burclar/gunluk-burc-yorumlari-25-haziran-2021,Wb-j49I2DEW7oYuPDoBJGg/NvUvVQF7mE6b4rz6sbthKg')
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
      appBar: AppBar(title: Text('GÜNLÜK BURÇ YORUMLARI'), actions: <Widget>[
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
