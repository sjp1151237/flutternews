import 'package:flutter/material.dart';

// stlss 静态widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home'),),
      body:Center(child: Text('Home'),),
    );
  }
}
