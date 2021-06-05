import 'package:flutter/material.dart';
import 'package:latihan_row_column/post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: avoid_init_to_null
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Api POST Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //tampilkan di view
              Text((postResult != null)
                  ? postResult.id +
                      "|" +
                      postResult.name +
                      "|" +
                      postResult.job +
                      "|" +
                      postResult.created
                  : "Tidak ada data njay"),
              RaisedButton(
                child: Text("POST"),
                onPressed: () {
                  ///[FUNGSI THEN = connecToApi ini async yang akan menghubungkan ke server, lalu di server akan kembalikan json object, jeson object di parsing di mapping, berubah jadi object postresult, nanti objet postresult di kembalikan ke yang manggil //.then// ini butuh satu buah method yang yang parameter itu postresult itu tadi]
                  PostResult.connectToApi("GOKIL BANGET", "Dokter")
                      .then((value) {
                    postResult = value;

                    ///[update UI]
                    setState(() {});
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
