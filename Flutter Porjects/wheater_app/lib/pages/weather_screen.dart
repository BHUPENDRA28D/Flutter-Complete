import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheater_app/additionalInfo_item.dart';
import 'package:wheater_app/hourly_forcast_item.dart';
import 'package:wheater_app/styles.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
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
          // InkWell(
          //   child: GestureDetector(
          //     child: const Icon(Icons.refresh),
          //   ),
          // ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            // Main Card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            "321°F",
                            style: mcTempText,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64.0,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text("Rain", style: mcSubText)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            // Weather Forcast Card
// Align(
//               alignment: Alignment.centerLeft,

            const Text(
              "Weather Forcast",
              style: wfcHeading,
            ),
            const SizedBox(
              height: 12,
            ),

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForcastItem(),
                  HourlyForcastItem(),
                  HourlyForcastItem(),
                  HourlyForcastItem(),
                  HourlyForcastItem(),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //Additional Information
            const Text(
              "Additional Information",
              style: wfcHeading,
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfoItem(),
                  AdditionalInfoItem(),
                  AdditionalInfoItem(),
                ])
          ],
        ),
      ),
    );
  }
}
