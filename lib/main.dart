import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//margin: EdgeInsets.fromLTRB(10, 20, 30, 40)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Row dan Column"),
          ),
          body: Container(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.amber, Colors.blue],
                ),
              ),
            ),
          )),
    );
  }
}
