import 'dart:convert';

import 'package:http/http.dart' as http;

/// * [Response]
/// * {
///    "name": "morpheus",
///    "job": "leader",
///    "id": "845",
///    "createdAt": "2021-06-05T04:05:35.893Z"
/// }
class PostResult {
  String id;
  String name;
  String job;
  String created;

  ////[Constructor]
  PostResult({this.id, this.name, this.job, this.created});

  ///[Factory method] membuat object dari postresult [membuat object hasil dari Json Object] 
  ///[Response]
  ///[Mapping]
  factory PostResult.creatPostResult(Map<String, dynamic> object) {
    //akan return object postresult yang baru
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  ///[method untuk menghubungkan aplikasi ke API] 
  ///Parameter [Request]
  static Future<PostResult> connectToApi(String name, String job) async {
    //untuk menghubungkan ke API butuh API URL
    String apiURL = "https://reqres.in/api/users";

    //panggil http request
    //http.post [methodnya async karena mengembalikan Feature]
    //apiResult belum dapat bentuk Json nya
    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});

    //mendapatkan bentuk json object
    var jsonObject = json.decode(apiResult.body);

    return PostResult.creatPostResult(jsonObject);
  }
}
