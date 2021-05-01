import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Theme Changer",
      // theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> randomColorsList = [
    Color(0xff44336),
    Color(0xfff3ff33),
    Color(0xffb6ff33),
    Color(0xff33e5ff),
    Color(0xffe433ff),
  ];

  int index;

  Color colorRight;

  void changeColor() {
    setState(() {
      index = Random().nextInt(randomColorsList.length);
      colorRight = randomColorsList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorRight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.white,
              // splashColor: colorRight,
              highlightColor: colorRight,
              onPressed: changeColor,
              padding: const EdgeInsets.all(12.0),
              elevation: 10.0,
              child: Text(
                "Change!",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
