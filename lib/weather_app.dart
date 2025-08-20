import 'package:flutter/material.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State createState() {
    return _WeatherApp();
  }
}

class _WeatherApp extends State {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text("Hello World"));
  }
}
