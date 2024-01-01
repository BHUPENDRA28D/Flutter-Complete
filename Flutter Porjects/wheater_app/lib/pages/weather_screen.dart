import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:wheater_app/items/additionalInfo_item.dart';
import 'package:wheater_app/items/hourly_forcast_item.dart';
import 'package:wheater_app/items/styles.dart';
import 'package:http/http.dart' as http;
import 'package:wheater_app/pages/secrets.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  double temp = 0;
  // bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentWeather();
  }

  Future getCurrentWeather() async {
    try {
      // setState(() {
      //   isLoading = true;
      // });
      String cityName = "Indore";
      final res = await http.get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/forecast?q=$cityName,in&APPID=$openWeatherAPIKey"));

      final data = jsonDecode(res.body);
      if (data['cod'] != '200') {
        throw Exception('Failed to load unexpected error occured');
      }
      setState(() {
        temp = (data['list'][0]['main']['temp']);
        // isLoading = false;
      });
    } catch (e) {
      throw e.toString();
    }
  }

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
      body: (temp == 0)
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeAlign: 4.0,
              ),
            )
          : Padding(
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
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Text(
                                  "$temp K",
                                  style: mcTempText,
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                const Icon(
                                  Icons.cloud,
                                  size: 64.0,
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                const Text("Rain", style: mcSubText)
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
                        HourlyForcastItem(
                          time: "00:00",
                          iconHP: Icons.night_shelter,
                          temp: "278",
                        ),
                        HourlyForcastItem(
                          time: "03:00",
                          iconHP: Icons.snowing,
                          temp: "254",
                        ),
                        HourlyForcastItem(
                          time: "06:00",
                          iconHP: Icons.cloud,
                          temp: "2081",
                        ),
                        HourlyForcastItem(
                          time: "09:00",
                          iconHP: Icons.pin_drop,
                          temp: "298",
                        ),
                        HourlyForcastItem(
                          time: "12:00",
                          iconHP: Icons.sunny,
                          temp: "321",
                        ),
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
                        AdditionalInfoItem(
                          icon: Icons.water_drop,
                          label: "Humidity",
                          value: "91",
                        ),
                        AdditionalInfoItem(
                          icon: Icons.air,
                          label: "Wind Speed",
                          value: "7.5",
                        ),
                        AdditionalInfoItem(
                          icon: Icons.arrow_circle_down_rounded,
                          label: "Presure",
                          value: "8546",
                        ),
                      ])
                ],
              ),
            ),
    );
  }
}
