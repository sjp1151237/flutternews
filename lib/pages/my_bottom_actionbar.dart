import 'package:flutter/material.dart';

class MyBottomActionbar extends StatefulWidget {
  @override
  _MyBottomActionbarState createState() => _MyBottomActionbarState();
}

class _MyBottomActionbarState extends State<MyBottomActionbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
        tooltip: 'JSPing',
        child: Icon(Icons.add, color: Colors.white,),),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape:CircularNotchedRectangle(),// 包容
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: <Widget>[IconButton(icon: Icon(Icons.home),color: Colors.white,onPressed: (){}),IconButton(icon: Icon(Icons.email),color: Colors.white,onPressed: (){},)],),// 为了融合 圆形缺口
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
