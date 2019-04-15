import 'package:flutter/material.dart';
import 'product_bean.dart';

class ProductHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ProcuctList(
          prodects: List.generate(
              20, (i) => ProductBean('商品$i', '这是一个商品详情，编号为：$i'))), // 匿名构造函数
    );
  }
}

class ProcuctList extends StatelessWidget {
  final List<ProductBean> prodects;

  const ProcuctList({Key key, this.prodects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: prodects.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                prodects[index].title,
              ),
              subtitle: Text(
                prodects[index].detail,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new ProduceDetail(
                              product: prodects[index],
                            )));
              },
            );
          }),
    );
  }
}

class ProduceDetail extends StatelessWidget {
  final ProductBean product;

  const ProduceDetail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品${product.title}'),
      ),
      body: Center(
//        child: Text(product.detail),
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        _getMyPhoneNum(context);
      },
      child: Text('返回我的手机号'),
    );
  }

  // 内部方法
  _getMyPhoneNum(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyPhone()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class MyPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的手机号'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('第一个号'),
              onPressed: () {
                Navigator.pop(context, '13122909667');
              },
            ),
            RaisedButton(
              child: Text('第一个号'),
              onPressed: () {
                Navigator.pop(context, '13071004937');
              },
            ),
          ],
        ),
      ),
    );
  }
}
