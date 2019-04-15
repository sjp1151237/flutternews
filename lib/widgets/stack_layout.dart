import 'package:flutter/material.dart';
class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),//对齐 属性值 0-1 控制container的吗
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://jspang.com/static//myimg/blogtouxiang.jpg'),
          radius: 100,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.redAccent),
          padding: EdgeInsets.all(5),
          child: new Text('SJP'),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(title: new Text('相对布局'),),
      body: Container(child: stack,),
    );
  }
}

class StackLayoutPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://jspang.com/static//myimg/blogtouxiang.jpg'),
          radius: 100,
        ),
        new Positioned(
          top: 10,
          left: 10,
          child: Text('SJP.com'),

        ),
        new Positioned(
          bottom: 10,
          right: 10,
          child: Text('技术胖'),

        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(title: new Text('相对布局'),),
      body: Container(child: stack,),
    );
  }
}
