import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stact and Align"),
        ),
        body: Stack(
          children: <Widget>[
            //background
            Column(
              children: <Widget>[
                //satu banding satu menggunakan Flexible()
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //listview
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Ini text yang ada di  lapis kedua di  stack",
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
              ],
            ),
            //button , Aligm untuk memindahkan button kemanapun diletakan
            Align(
              alignment: Alignment(0, 0.80), //ini custom pisiisi
              child: RaisedButton(
                  child: Text("My button"),
                  color: Colors.amber,
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
