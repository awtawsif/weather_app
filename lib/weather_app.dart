import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/hourly_forecast.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              "98.7°F",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(height: 20),
                            Icon(Icons.cloud, size: 64),
                            SizedBox(height: 10),
                            Text(
                              "Rain",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Weather Forecast",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 16),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HourlyForecast(
                      time: "9:00",
                      icon: Icons.cloud,
                      temperature: "80.23",
                    ),
                    HourlyForecast(
                      time: "12:00",
                      icon: Icons.sunny,
                      temperature: "100.23",
                    ),
                    HourlyForecast(
                      time: "15:00",
                      icon: Icons.sunny,
                      temperature: "101.23",
                    ),
                    HourlyForecast(
                      time: "18:00",
                      icon: Icons.cloud,
                      temperature: "90.23",
                    ),
                    HourlyForecast(
                      time: "21:00",
                      icon: Icons.cloud,
                      temperature: "80.23",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Additional Information",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInformation(
                    icon: Icons.water_drop,
                    label: "Humidity",
                    value: "94",
                  ),
                  AdditionalInformation(
                    icon: Icons.air,
                    label: "Wind Speed",
                    value: "7.94",
                  ),
                  AdditionalInformation(
                    icon: Icons.beach_access,
                    label: "Pressure",
                    value: "1002",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
