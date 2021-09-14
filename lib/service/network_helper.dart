import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(
    this.url, 
    {
    this.headers,
    this.body,
    this.filePath
  });

  final Uri url;
  final Map<String, String>? headers;
  final dynamic body;
  final String? filePath;

  Future getData() async {
    try {
      http.Response response = await http.get(
        url,
        headers: headers,
      );
      String dataJson = '';
      response.statusCode == 200 ? dataJson = response.body : print(response.statusCode);
      print('======= getData from ${url.path} ==================');
      print(dataJson);
      return jsonDecode(dataJson);
    } catch (e) {
      print("Failed get data");
      print(e);
      throw "Connection Error";
    }
  }
}