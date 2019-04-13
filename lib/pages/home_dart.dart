import 'package:flutter/material.dart';

// stlss 静态widget 图片demo
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home'),),
      body:Center(child: Container(
        child: new Image.network('https://cdn2.jianshu.io/assets/web/qingteng-be381813e92784a4c01c608834f76eb2.png',fit: BoxFit.cover,color: Colors.deepOrange,colorBlendMode: BlendMode.darken,repeat: ImageRepeat.repeatX,),
        width: 200,
        height: 200,
        color: Colors.deepOrangeAccent,
      ),),
    );
  }
}
