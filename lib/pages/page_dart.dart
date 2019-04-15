import 'package:flutter/material.dart';

// stlss 静态widget
class Pages extends StatelessWidget {

  // list 横向 demo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListDemo'),),
      body:new ListView(
        children: <Widget>[
          new Image.asset('images/splash.jpg'),
          new Image.asset('images/splash.jpg'),
          new Image.asset('images/touxiang.png'),
          new Image.asset('images/touxiang.png'),
          new ListTile(
            leading: new Icon(Icons.ac_unit),
            title: new Text('东兴'),
          ),
          new ListTile(
            leading: new Icon(Icons.ac_unit),
            title: new Text('周星驰'),
          ),
          new ListTile(
            leading: new Icon(Icons.ac_unit),
            title: new Text('王晶'),
          )
        ],
      ),
    );
  }
}
