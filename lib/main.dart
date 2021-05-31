import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> list = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah Data++"),
                  onPressed: () {
                    setState(() {
                      list.add(Text("Data ke- ${counter.toString()}"));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Hapus Data--"),
                  onPressed: () {
                    setState(() {
                      list.removeLast();
                      counter--;
                    });
                  },
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: list,
            ),
          ],
        ),
      ),
    );
  }
}
