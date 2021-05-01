import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: "Search Bar",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon cusIcon = Icon(Icons.search);
  dynamic cusText = Text("AppBar");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        actions: [
          // InkWell(
          //   onTap: () {},
          //   child: SizedBox(
          //     width: 40.0,
          //     child: Icon(
          //       Icons.search,
          //     ),
          //   ),
          // ),
          IconButton(
              icon: cusIcon,
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusText = TextField(
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Seach",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 18)),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    );
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    this.cusText = Text("AppBar");
                  }
                });
              }),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_open_rounded),
        ),
        title: cusText,
        // elevation: 12.0,
      ),
    );
  }
}