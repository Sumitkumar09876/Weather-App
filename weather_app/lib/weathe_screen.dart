import 'dart:ui';

import 'package:flutter/material.dart';
import 'hourly_forecast.dart';
import 'additional_forecast.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            '300°K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 65,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Rain',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Card for Weather Forecast
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Weather Forecast',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 12),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Hourlyforecastitem(),
                  Hourlyforecastitem(),
                  Hourlyforecastitem(),
                  Hourlyforecastitem(),
                  Hourlyforecastitem(),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Additional Information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 12),
            const AdditionalForecast(),
          ],
        ),
      ),
    );
  }
}


