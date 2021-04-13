import 'package:flutter/material.dart';

class VillaPage extends StatefulWidget {
  VillaPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _VillaPageState createState() => _VillaPageState();
}

class _VillaPageState extends State<VillaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("검색"),
        elevation: 0.0,
        /*leading: IconButton(
            icon: Image.asset('assets/images/RoomGo.png'),
            tooltip: '메뉴',
            onPressed: () {
              _clickMe();
            }),*/
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person), tooltip: '사용자 정보', onPressed: () {})
        ],
      ),
      body: Column(children: <Widget>[]),
    );
  }
}
