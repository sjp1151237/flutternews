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
          new Image.network("https://cdn2.jianshu.io/assets/web/qingteng-be381813e92784a4c01c608834f76eb2.png"),
          new Image.network("https://cdn2.jianshu.io/assets/web/qingteng-be381813e92784a4c01c608834f76eb2.png"),
          new Image.network("https://cdn2.jianshu.io/assets/web/qingteng-be381813e92784a4c01c608834f76eb2.png"),
          new Image.network("https://cdn2.jianshu.io/assets/web/qingteng-be381813e92784a4c01c608834f76eb2.png"),
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
