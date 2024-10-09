import 'package:flutter/material.dart';

class stackScreen extends StatelessWidget {
  const stackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: Text('Latihan List View'),
              backgroundColor: Colors.amber,
              ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(child: Text("Type A")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.yellow,
            child: Center(child: Text("Type B")),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Center(child: Text("Type C")),
          )
        ],
      )
      
    );
      
  }
}