import 'package:flutter/material.dart';
import 'package:weather_app/services/location.dart';

const apiKey = '81489127d7cd773b14c6b5fc40ef08dc';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    getData();
  }

  void getData() async {
    double temperature = decodedData['main']['temp'];

    int condition = decodedData['weather'][0]['id'];

    String cityName = decodedData['name'];

    print(temperature);
    print(condition);
    print(cityName);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
