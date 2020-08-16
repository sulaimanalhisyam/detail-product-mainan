import 'package:flutter/material.dart';

void main() =>
    {runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()))};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image(
          image: NetworkImage(
              'http://file.multitoys.co.id/figure_rise_standard_ultraman_suit_zero_action_60262-ddb86-1768_6462.jpg')),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Ultraman Zero Suit',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );

    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Mainan ini dari perusahaan  jepang bandai yang terkenal dan mainan ini terinspirasi dari tv seris dan movie yaitu ultraman,'
        'dan mainan ini di bilang figure/action figure yang di gemari oleh kolektor,'
        'ada yang membelinya sampai satu raungan / sampai satu rumah saperti : frans sanjaya',
        textAlign: TextAlign.justify,
      ),
    );

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellowAccent),
        Icon(Icons.star, color: Colors.yellowAccent),
        Icon(Icons.star, color: Colors.yellowAccent),
        Icon(Icons.star, color: Colors.yellowAccent)
      ],
    );
    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[rateSection, Text('99999 Reviews')],
    );
    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.toys, 'mainan 100%', 'asli bandai'),
        _buildMenuSection(Icons.timer, 'Build', 'mungkin 1 hari atau 5 menit'),
        _buildMenuSection(Icons.toys, 'feeds', '∞unlimited')
      ],
    );
    return MaterialApp(
      title: 'MaterialApp',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          title: Text(
            'Mainan Ultraman',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[Icon(Icons.search, color: Colors.black)],
        ),
        body: ListView(
          children: <Widget>[
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection
          ],
        ),
      ),
    );
  }

  Widget _buildTextSection(
    String text,
    double textSize,
    double paddingTop,
  ) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop),
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize,
        ),
      ),
    );
  }

  _buildMenuSection(
    IconData iconData,
    String title,
    String timestamp,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTextSection(title, 16, 8),
        _buildTextSection(timestamp, 12, 12),
      ],
    );
  }
}
