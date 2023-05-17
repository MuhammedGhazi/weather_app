import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchPage extends StatelessWidget {
  //SearchPage({super.key});
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search a city"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) {
              WeatherService().getWeather(cityName: value);
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              label: Text("Search"),
              hintText: "Enter city name",
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
