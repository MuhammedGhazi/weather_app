import 'package:flutter/foundation.dart';

class WeatherModel {
  final String country;
  final String date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStateName;

  WeatherModel(
      {required this.country,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});
  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];

    return WeatherModel(
      country: data['location']['country'],
      date: data['location']['localtime'],
      temp: jsonData["avgtemp_c"],
      maxTemp: jsonData["maxtemp_c"],
      minTemp: jsonData['mintemp_c'],
      weatherStateName: jsonData['condition']['text'],
    );
  }
}
