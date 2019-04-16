import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../service/service_method.dart';
import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

// FutureBuilder 组件解决的问题是 动态渲染
class HomeSwiper extends StatefulWidget {
  @override
  _HomeSwiperState createState() => _HomeSwiperState();
}

class _HomeSwiperState extends State<HomeSwiper> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return FutureBuilder(
      future: getHomePageContent(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = json.decode(snapshot.data.toString());
          List<Map> swiper = (data['data']['slides'] as List).cast();
          List<Map> navgatorList = (data['data']['category'] as List).cast();
          String adPic = data['data']['advertesPicture']['PICTURE_ADDRESS'];
          String leadImg = data['data']['shopInfo']['leaderImage'];
          String leadPhone = data['data']['shopInfo']['leaderPhone'];
          List<Map> recoList = (data['data']['recommend'] as List).cast();
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SwiperDiy(
                  swiperDateList: swiper,
                ),
                TopNavigator(
                  navigatorList: navgatorList,
                ),
                ADBanner(
                  adPic: adPic,
                ),
                LeaderPhone(
                  leaderImg: leadImg,
                  leaderPhone: leadPhone,
                ),
                Recommends(recList: recoList,)
              ],
            ),
          );
        } else {
          return Center(
            child: Text('加载中。。。。。'),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// 首页轮播组件
class SwiperDiy extends StatelessWidget {
  final List swiperDateList;

  const SwiperDiy({Key key, this.swiperDateList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(400),
      child: Swiper(
        autoplay: true,
        pagination: SwiperPagination(),
        itemCount: swiperDateList.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            '${swiperDateList[index]['image']}',
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}

class TopNavigator extends StatelessWidget {
  final List navigatorList;

  const TopNavigator({Key key, this.navigatorList}) : super(key: key);

  Widget _widgetNavItemUi(BuildContext context, item) {
    return Image.network(
      item['image'],
      height: ScreenUtil().setHeight(50),
    );
//   return InkWell(
//     onTap: (){print('点击了导航');},
//     child: Column(
//       children: <Widget>[
//         Image.network(item['image'],),
//         Text(item['mallCategoryName'])
//       ],
//     ),
//   );
  }

  @override
  Widget build(BuildContext context) {
    if (this.navigatorList.length > 10) {
      this.navigatorList.removeRange(10, this.navigatorList.length);
    }
    return Container(
        height: ScreenUtil().setHeight(350),
        padding: EdgeInsets.all(3.0),
        child: GridView.count(
          crossAxisCount: 5,
          padding: EdgeInsets.all(5.0),
          children: navigatorList.map((item) {
            return _widgetNavItemUi(context, item);
          }).toList(),
        ));
  }
}

// 广告位
class ADBanner extends StatelessWidget {
  final String adPic;

  const ADBanner({Key key, this.adPic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(adPic),
    );
  }
}

// 店长电话
class LeaderPhone extends StatelessWidget {
  final String leaderImg, leaderPhone;

  const LeaderPhone({Key key, this.leaderImg, this.leaderPhone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: InkWell(
          onTap: () {
            _luncherURL();
          },
          child: Image.network(leaderImg),
        ),
      ),
    );
  }

  void _luncherURL() async {
    print(leaderPhone);
    String url = 'tel:' + leaderPhone;
//    String urlHttp = 'http://baidu.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'url 不能进行访问，异常';
    }
  }
}

//商品推荐
class Recommends extends StatelessWidget {
  final List recList;

  const Recommends({Key key, this.recList}) : super(key: key);

  // 标题栏
  Widget _titleWidget() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 2.0, 0, 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Text('商品推荐',style: TextStyle(color: Colors.redAccent,fontSize: 16)),
    );
  }

  // 商品单独项
  Widget _productItem(index){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Container(
          height: ScreenUtil().setHeight(330),
          width: ScreenUtil().setWidth(250),
          decoration: BoxDecoration(
            color: Colors.white,
                border: Border(left: BorderSide(width: 5.0,color: Colors.black12))
          ),
          child: Column(
            children: <Widget>[
              Image.network(recList[index]['image'])
              ,Text('￥${recList[index]['price']}')
              ,Text('￥${recList[index]['price']}',style: TextStyle(decoration:TextDecoration.underline,color: Colors.black12),)
            ],
          ),
        ),
      ),
    );
  }

  // 横向列表方法
  Widget _recWidgetList(){
    return Container(
      height: ScreenUtil().setHeight(330),
      margin: EdgeInsets.all(10.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recList.length,
          itemBuilder: (context,index){
            return _productItem(index);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(430),
      margin: EdgeInsets.only(top: 10),
        child: Column(
        children: <Widget>[
          _titleWidget(),
          _recWidgetList()
        ],
    ),
    );
  }
}
