import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  // String? cityName;
  Future<WeatherModel> getWeather({required String cityName}) async {
    String baseURL = "http://api.weatherapi.com/v1";
    String apiKey = 'c63e5d88f25c4d44bb9121840222212';
    Uri url = Uri.parse('$baseURL/forecast.json?key=$apiKey&q=$cityName');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weatherModel = WeatherModel.fromJson(data);
    print(weatherModel.country);
    return weatherModel;
  }
}
