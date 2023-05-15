import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
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
