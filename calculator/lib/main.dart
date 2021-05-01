import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int fnum;
  int snum;
  String display = "";
  String res;
  String otf;

  void btnclicked(String btntext) {
    if (btntext == "C") {
      fnum = 0;
      snum = 0;
      display = "";
      res = "";
    } else if (btntext == "+" ||
        btntext == "X" ||
        btntext == "/" ||
        btntext == "-") {
      fnum = int.parse(display);
      res = "";
      otf = btntext;
    } else if (btntext == "=") {
      snum = int.parse(display);
      if (otf == "+") {
        res = (fnum + snum).toString();
      }
      if (otf == "-") {
        res = (fnum - snum).toString();
      }
      if (otf == "/") {
        res = (fnum ~/ snum).toString();
      }
      if (otf == "X") {
        res = (fnum * snum).toString();
      }
    } else {
      res = int.parse(display + btntext).toString();
    }
    setState(() {
      display = res;
    });
  }

  dynamic customButton(String val) {
    return Expanded(
      child: MaterialButton(
        onPressed: () => btnclicked(val),
        padding: EdgeInsets.all(25),
        highlightColor: Colors.black45,
        splashColor: Colors.black54,
        // borderSide: BorderSide(color: Colors.black54),
        child: Text(
          "$val",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.bottomRight,
              child: Text(
                "$display",
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            )),
            Row(
              children: [
                customButton("9"),
                customButton("8"),
                customButton("7"),
                customButton("X"),
              ],
            ),
            Row(
              children: [
                customButton("6"),
                customButton("5"),
                customButton("4"),
                customButton("/"),
              ],
            ),
            Row(
              children: [
                customButton("3"),
                customButton("2"),
                customButton("1"),
                customButton("+"),
              ],
            ),
            Row(
              children: [
                customButton("C"),
                customButton("0"),
                customButton("."),
                customButton("="),
              ],
            )
          ],
        ),
      ),
    );
  }
}
