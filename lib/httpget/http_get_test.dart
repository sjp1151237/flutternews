import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'http_headers.dart';

class HttpTest extends StatefulWidget {
  @override
  _HttpTestState createState() => _HttpTestState();
}

class _HttpTestState extends State<HttpTest> {
  TextEditingController typeController = TextEditingController();
  String showText = '欢迎搜索';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('网络请求测试'),
        ),
        body: SingleChildScrollView(child: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: typeController,
                decoration: InputDecoration(
                    labelText: '参数类型',
                    helperText: '请输入你喜欢的类型',
                    contentPadding: EdgeInsets.all(10)),
                autofocus: false,
              ),
              RaisedButton(
                onPressed: () {
                  _choseAction();
                },
                child: Text('选择完毕'),
              ),
              Text(
                showText,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        )),
      ),
    );
  }

  void _choseAction() {
    print('开始选择你喜欢的类型。。。。。。');
    if (typeController.text.toString() == '') {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('类型不为空'),
              ));
    } else {
      getHttp(typeController.text.toString()).then((val) {
        // 动态函数
        setState(() {
//          showText = val['data']['name'].toString();
        });
      });
    }
  }

  Future getHttp(String typeText) async {
    try {
      Response response;
      var data = {'name': typeText};
      Dio dio = new Dio();
      dio.options.headers = httpHeader;
      response = await dio.get(
          'http://47.98.43.72/browser/qq/recommend',
          queryParameters: data);
      print(response.data);
      return response.data;
    } catch (e) {
      return print(e);
    }
  }
}
