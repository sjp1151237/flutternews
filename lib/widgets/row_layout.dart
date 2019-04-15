import 'package:flutter/material.dart';

// Row 控件可以分为 Expanded 灵活排列和非灵活排列 啥都不带 他俩也可以配合使用
class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Row(children: <Widget>[
       new RaisedButton(onPressed: (){},color: Colors.orange,child: new Text('Red Butotn'))
        ,
        new Expanded(child: new RaisedButton(onPressed: (){},color: Colors.deepPurpleAccent,child: new Text('Red Butotn'),))
        ,
        new Expanded(child: new RaisedButton(onPressed: (){},color: Colors.pink,child: new Text('Red Butotn'),))
        ,
        new Expanded(child: new RaisedButton(onPressed: (){},color: Colors.blue,child: new Text('Red Butotn'),))
        ,
        new Expanded(child: new RaisedButton(onPressed: (){},color: Colors.redAccent,child: new Text('Red Butotn'),))
        ,
      ],),
      appBar: new AppBar(title: Text('水平方向布局'),),
    );
  }
}
