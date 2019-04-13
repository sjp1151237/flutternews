import 'package:flutter/material.dart';
class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('网格列表'),),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        children: <Widget>[
          const Text('I am sjp',style: TextStyle(color: Colors.deepPurple),),
          const Text('I am hjk'),
          const Text('I am lko'),
          const Text('I am plo'),
          const Text('I am huk'),
          const Text('I am huk',style: TextStyle(color: Colors.deepOrange),),
          const Text('I am huk'),
          const Text('I am huk'),
          const Text('I am huk'),
          const Text('I am huk'),
          const Text('I am lko'),
          const Text('I am plo',style: TextStyle(color: Colors.lightBlueAccent),),
          const Text('I am huk'),
          const Text('I am huk'),
          const Text('I am huk'),
          const Text('I am huk',style: TextStyle(color: Colors.orangeAccent),),
        ],
      ),
    );
  }
}
