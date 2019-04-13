import 'package:flutter/material.dart';

// stlss 静态widget
class Airplay extends StatelessWidget {

  final _textColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Airplay'),),
      body:Center(child: Text('这只是一个简单的文本描述代码并居中显示。。。。。。。。。。。。',
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.blue,fontSize: 25.0,decorationColor: Colors.blue,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.solid),
      ),),
    );
  }
}
