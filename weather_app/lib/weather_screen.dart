import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // MAIN - CARD
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              '300.0K',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Icon(
                              Icons.cloud,
                              size: 64,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Rain',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // WEATHER FORECAST CARDS
              const Text(
                'Weather Forecast',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HourlyForecastWidget(
                      time: '09:00',
                      icon: Icons.cloud,
                      temp: '301.72',
                    ),
                    HourlyForecastWidget(
                      time: '09:00',
                      icon: Icons.cloud,
                      temp: '301.72',
                    ),
                    HourlyForecastWidget(
                      time: '09:00',
                      icon: Icons.cloud,
                      temp: '301.72',
                    ),
                    HourlyForecastWidget(
                      time: '09:00',
                      icon: Icons.cloud,
                      temp: '301.72',
                    ),
                    HourlyForecastWidget(
                      time: '09:00',
                      icon: Icons.cloud,
                      temp: '301.72',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Additional Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInformation(
                    icon: Icons.water_drop,
                    label: 'Humidity',
                    value: '90',
                  ),
                  AdditionalInformation(
                    icon: Icons.air,
                    label: 'Wind Speed',
                    value: '7.5',
                  ),
                  AdditionalInformation(
                    icon: Icons.beach_access,
                    label: 'Pressure',
                    value: '1000',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
