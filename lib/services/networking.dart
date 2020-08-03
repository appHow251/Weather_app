import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  void getData() async {
    http.Response response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    // status code of 200 means everything's ok
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
