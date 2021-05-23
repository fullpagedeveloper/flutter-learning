import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Row dan Column"),
          ),
          body: Center(
            child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 100,
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          )),
    );
  }
}
