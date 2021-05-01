import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/Images/bg.jpg',
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  'assets/Images/logo.png',
                  height: 60.0,
                  width: 120.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 483,
                    padding: EdgeInsets.symmetric(
                      vertical: 35.0,
                      horizontal: 35.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          child: TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                hintText: "Username",
                                contentPadding: EdgeInsets.all(15.0),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                        TextField(
                          autocorrect: false,
                          autofocus: false,
                          style: TextStyle(fontSize: 20),
                          // obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              filled: true,
                              contentPadding: EdgeInsets.all(15.0),
                              fillColor: Colors.grey[200]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 150),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Password ?",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          minWidth: 250,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
