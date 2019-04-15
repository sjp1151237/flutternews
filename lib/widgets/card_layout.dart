import 'package:flutter/material.dart';
class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: new Icon(Icons.ac_unit,color: Colors.redAccent,),
            subtitle: Text('技术123312313123'),
            title: Text('郑州市',style: TextStyle(fontWeight: FontWeight.w500),),),
          new Divider(),// 分割线 一行代码搞定 真方便
          ListTile(
            leading: new Icon(Icons.ac_unit,color: Colors.redAccent,),
            subtitle: Text('技术123312313123'),
            title: Text('北京市',style: TextStyle(fontWeight: FontWeight.w500),),),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.ac_unit,color: Colors.redAccent,),
            subtitle: Text('技术123312313123'),
            title: Text('上海市',style: TextStyle(fontWeight: FontWeight.w500),),),
        ],
      ),
    );
    return Scaffold(
      appBar: new AppBar(title: Text('卡片布局'),),
      body: Center(
        child: card,
      ),
    );
  }
}
