import 'package:flutter/material.dart';

// stlss 静态widget
class Email extends StatelessWidget {
  //Container 组件相当于我们的div const常量关键字 加上就不变了   EdgeInsets.all
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Email'),),
      body:Center(child: Container(
        child: new Text('hello sjp',style: TextStyle(color: Colors.blue,fontSize: 16,),),
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.fromLTRB(10.0,10.0,0,0),
        margin: const EdgeInsets.all(15),
        decoration: new BoxDecoration(
            border: Border.all(width: 2.0,color: Colors.amberAccent),
            gradient: const LinearGradient(colors: [Colors.blue,Colors.deepOrangeAccent])),
      ),),
    );
  }
}
