import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

class AspectB2 extends StatefulWidget {
  @override
  TuzukState createState() => TuzukState();
}

class TuzukState extends State<AspectB2> {
  String kocgunluk,
      bogagunluk,
      ikizlergunluk,
      yengecgunluk,
      aslangunluk,
      basakgunluk,
      terazigunluk,
      akrepgunluk,
      yaygunluk,
      oglakgunluk,
      kovagunluk,
      balikgunluk;
  String _htmlveri = '',
      _htmlveri1 = '',
      _htmlveri2 = '',
      _htmlveri3 = '',
      _htmlveri4 = '',
      _htmlveri5 = '',
      _htmlveri6 = '',
      _htmlveri7 = '',
      _htmlveri8 = '',
      _htmlveri9 = '',
      _htmlveri10 = '',
      _htmlveri11 = '';

  @override
  void initState() {
    super.initState();
    _istek();
    _istek1();
    _istek2();
    _istek3();
    _istek4();
    _istek5();
    _istek6();
    _istek7();
    _istek8();
    _istek9();
    _istek10();
    _istek11();
  }

  Future _istek() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/koc-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri = eslesen[1]
          .toString()
          .replaceAll('<p>', '')
          .replaceAll('<//p>', '')
          .replaceAll("<div class='horoscope-detail-content'>", '')
          .replaceAll("<div class='horoscope-detail-tab-content'>", '')
          .replaceAll('<//p></div></div>', '');
      debugPrint(_htmlveri.toString());
      setState(() {});
    });
  }

  Future _istek1() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/boga-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri1 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri1);
      setState(() {});
    });
  }

  Future _istek2() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/ikizler-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri2 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri2);
      setState(() {});
    });
  }

  Future _istek3() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/yengec-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri3 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri3);
      setState(() {});
    });
  }

  Future _istek4() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/aslan-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri4 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri4);
      setState(() {});
    });
  }

  Future _istek5() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/basak-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri5 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri5);
      setState(() {});
    });
  }

  Future _istek6() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/terazi-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri6 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri6);
      setState(() {});
    });
  }

  Future _istek7() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/akrep-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri7 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri7);
      setState(() {});
    });
  }

  Future _istek8() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/yay-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri8 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri8);
      setState(() {});
    });
  }

  Future _istek9() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/oglak-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri9 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri9);
      setState(() {});
    });
  }

  Future _istek10() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/kova-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri10 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri10);
      setState(() {});
    });
  }

  Future _istek11() async {
    setState(() {});
    await http
        .get(
            'https://www.hurriyet.com.tr/mahmure/astroloji/balik-burcu-haftalik-yorum/')
        .then((gelenveri) {
      _htmlveri = gelenveri.body;
      var document = parse(_htmlveri);

      _htmlveri = document
          .querySelector('.horoscope-detail-content')
          .outerHtml
          .replaceAll('\n', '')
          .replaceAll('\t', '');

      RegExp arama = new RegExp('<p>(.*?)</p>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri11 =
          eslesen[1].toString().replaceAll('<p>', '').replaceAll('<//p>', '');
      debugPrint(_htmlveri11);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    String sayi = _htmlveri +
        _htmlveri1 +
        _htmlveri2 +
        _htmlveri3 +
        _htmlveri4 +
        _htmlveri5 +
        _htmlveri6 +
        _htmlveri7 +
        _htmlveri8 +
        _htmlveri9 +
        _htmlveri10 +
        _htmlveri11;

    return Scaffold(
      appBar: AppBar(title: Text('TUZLA'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _istek,
        )
      ]),
      body: Center(
        child: sayi.isNotEmpty
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Html(
                      data: sayi
                          .replaceAll(RegExp(r'\(.*\)'), '')
                          .replaceAll('LİMİTED ŞİRKETİ', 'Ltd.Şti.')
                          .replaceAll('ANONİM ŞİRKETİ', 'A.Ş.')),
                ),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
