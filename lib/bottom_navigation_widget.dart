import 'package:flutter/material.dart';
import 'package:flutter_app/pages/airplay_dart.dart';
import 'package:flutter_app/pages/email_dart.dart';
import 'package:flutter_app/pages/home_dart.dart';
import 'package:flutter_app/pages/page_dart.dart';
import 'package:flutter_app/widgets/card_layout.dart';
import 'package:flutter_app/widgets/column_layout.dart';
import 'package:flutter_app/widgets/list_demo_two.dart';
import 'package:flutter_app/widgets/row_layout.dart';
import 'package:flutter_app/widgets/stack_layout.dart';

// 动态widget stful 里面的东西是变化的 有两部分 一部分是继承 StatefulWidget 一部分继承State
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
// 下划线代表内部使用
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 1;
  List<Widget> pageList = List();

  List<String> ages = List();

  // 初始化
  @override
  void initState() {
    super.initState();
    ages
      ..add('式 简单说')
      ..add('模式')
      ..add('建造者模式')
      ..add('是添加')
      ..add('建造')
      ..add('是添加什么返')
      ..add('是添加什么');

    pageList
      ..add(CardLayout())
      ..add(Airplay())
      ..add(Email())
      ..add(Pages())
      ..add(HomePage()); // .. 建造者模式 简单说就是添加什么返回什么
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          }, // 点击事件
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.label,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'List',
                  style: TextStyle(color: _BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Hello',
                  style: TextStyle(color: _BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Email',
                  style: TextStyle(color: _BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Pages',
                  style: TextStyle(color: _BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Hello',
                  style: TextStyle(color: _BottomNavigationColor),
                ))
          ]),
    );
  }
}
