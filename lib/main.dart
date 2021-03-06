import 'package:flutter/material.dart';
import 'package:flutter_app/appnavigation/home_navi.dart';
import 'package:flutter_app/appnavigation/produce_list_page.dart';
import 'package:flutter_app/httpget/http_get_test.dart';
import 'package:flutter_app/pages/my_bottom_actionbar.dart';
import 'package:flutter_app/widgets/swiper_widget.dart';
import 'bottom_navigation_widget.dart';

void main()=>runApp(new MyApp());

// stlss 静态方法快速生成键
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter bottomNavigationBar",
      // 自定义主题样本
      theme: ThemeData(primaryColor: Colors.pink),
//      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
