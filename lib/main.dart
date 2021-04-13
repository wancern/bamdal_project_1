import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'villa.dart';
import 'apartment.dart';
import 'officetel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.yellow[600],
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("메뉴"),
        elevation: 0.0,
        leading: IconButton(
            icon: Image.asset('assets/images/RoomGo.png'),
            tooltip: '메뉴',
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person), tooltip: '사용자 정보', onPressed: () {})
        ],
      ),
      body: Column(children: <Widget>[
        ElevatedButton(
          child: Text('빌라', style: TextStyle(fontSize: 24)),
          onPressed: () {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => VillaPage()));
          },
        ),
        ElevatedButton(
          child: Text('오피스텔', style: TextStyle(fontSize: 24)),
          onPressed: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => OfficePage()));
          },
        ),
        ElevatedButton(
          child: Text('아파트', style: TextStyle(fontSize: 24)),
          onPressed: () {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => ApartPage()));
          },
        ),
      ]),
    );
  }
}
