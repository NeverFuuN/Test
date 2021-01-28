import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(title: new Text('Flutter ')),
          body: MyApp())));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List colors = [
    Colors.amberAccent,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.deepOrange,
    Colors.teal,
    Colors.black,
    Colors.purple,
    Colors.green,
    Colors.blue,
  ];
  Random random = new Random();
  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(9));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => changeIndex(),
          child: Container(
            color: colors[index],
            alignment: Alignment.center,
            child: Text("Hey There"),
          ),
        ),
      ),
    );
  }
}
