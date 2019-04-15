import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  final List<String> items; // 动态的怎么用final 关键字

  /**
   * scrollDirection: Axis.horizontal, 横向列表
   * 构造函数 哈哈哈 这么好生成
   * ListView.builder 生成动态list
   *
   * required必须接收的参数
   */
  const ListDemo({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('横向list'),
      ),
      body: Center(
        child: Container(
          height: 5000,
          child: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              // 方法体 返回瓦片
              return new ListTile(
                title: new Text('${items[index]}'),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.blue,
        ),
        new Container(
          width: 180.0,
          color: Colors.red,
        ),
        new Container(
          width: 180.0,
          color: Colors.orange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        ),
        new Container(
          width: 180.0,
          color: Colors.redAccent,
        ),
      ],
    );
  }
}
