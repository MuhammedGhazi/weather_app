import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "There is no weather 😌 start",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'Searshing now 🔎',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
