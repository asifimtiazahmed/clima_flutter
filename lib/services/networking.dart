import 'package:http/http.dart' as http;
import 'dart:convert';

class GetData{

  String apiKey ='bb435282051fc327f3e2685c4bf50659';
  double longitude;
  double latitude;
  String data;

  void setLocation({double lon, double lat}){
    longitude = lon;
    latitude = lat;
}
Future getCityData(String cityName) async {
    String apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric';
    http.Response response = await http.get(apiUrl);
    var statusCode = response.statusCode;
    if(statusCode == 200){
      data = response.body;
    } else{
      print(statusCode);
    }
    return jsonDecode(data);
}

Future getData() async {
    String apiUrl = 'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric';
    print(apiUrl);
    http.Response response = await http.get(apiUrl);

    var statusCode = response.statusCode;
    if(statusCode == 200){
      data = response.body;
    } else{
      print(statusCode);
    }
    return jsonDecode(data);

  }



}