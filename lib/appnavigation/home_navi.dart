import 'package:flutter/material.dart';

class HomeNavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('查看商品详情页'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new PageOne()),
              );
            }),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第一页'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
