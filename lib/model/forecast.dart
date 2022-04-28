import 'dart:convert';

import 'package:cropdoc_app/model/location.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


const apiKey = '***REMOVED***';

class WeatherData {

  LocationHelper locationData;
  late double currentTemperature;
  late String currentCondition;
  late String city;
  late double feels_like;
  late double temp_min;
  late double temp_max;
  //WeatherData(required this.locationData);

  WeatherData({required this.locationData});

  Future<void> getCurrentTemperature() async {
    Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=${apiKey}&units=metric'));

    if (response.statusCode == 200) {
      String data = response.body;
      var currentWeather = jsonDecode(data);

      try {
        currentTemperature = currentWeather['main']['temp'];
        currentCondition = currentWeather['weather'][0]['description'];
        city = currentWeather['name'];
        feels_like = currentWeather['main']['feels_like'];
        temp_min = currentWeather['main']['temp_min'];
        temp_max = currentWeather['main']['temp_max'];

      } catch (e) {
        print(e);
      }
    } else {
      print('Could not fetch temperature!');
    }
  }

  void getNormalWeather() {
    currentTemperature = 25.73;
    currentCondition = "scattered clouds";
    city = "Loading..";
    feels_like = 26.5;
    temp_min = 25.68;
    temp_max = 26.9;
  }

}