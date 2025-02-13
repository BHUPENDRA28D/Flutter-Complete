import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  late Future<Map<String, dynamic>> weather;

  Future<Map<String, dynamic>> getCurrentWeather() async {
    try {
      String cityName = "Bhopal";
      final res = await http.get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/forecast?q=$cityName,in&APPID=$openWeatherAPIKey"));

      final data = jsonDecode(res.body);
      if (data['cod'] != '200') {
        throw data['message'];
      }
      return (data);
      // temp = (data['list'][0]['main']['temp']);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weather = getCurrentWeather();
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

        // InkWell(
        //   child: GestureDetector(
        //     child: const Icon(Icons.refresh),
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                weather = getCurrentWeather();
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body:
          // (isLoading)
          //     ? const Center(
          //         child: CircularProgressIndicator(
          //           color: Colors.white,
          //           strokeAlign: 4.0,
          //         ),
          //       )
          FutureBuilder(
        future: weather,
        builder: (context, snapshot) {
          // print(snapshot);
          /* this is handeling
          ---
           of loading state*/
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.orange,
              ),
            );
          }
          /* this is handeling
          ---
           of error state*/
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          /* this is handeling
          ---
           of data  state*/
          // if(snapshot.hasData)
          final data = snapshot.data!;
          final currentWeatherData = data['list'][0];

          final currentTemp = (currentWeatherData['main']['temp']) - 273.15;
          final currentSky = (currentWeatherData['weather'][0]['main']);
          final windSpeed = currentWeatherData['wind']['speed'];
          final currentPressure = (currentWeatherData['main']['pressure']);
          final currentHumidity = (currentWeatherData['main']['humidity']);

          return Padding(
            padding: const EdgeInsets.all(16.0),
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
                                currentTemp.toStringAsFixed(1) + "°C",
                                style: mcTempText,
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Icon(
                                currentSky == "Clouds" || currentSky == "Rain"
                                    ? Icons.cloud
                                    : Icons.sunny,
                                size: 64.0,
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Text(currentSky, style: mcSubText)
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
                  "Hourly Forcast",
                  style: wfcHeading,
                ),
                const SizedBox(
                  height: 12,
                ),

                /*   SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 10; i++)
                        HourlyForcastItem(
                          time: data['list'][i + 1]['dt'].toString(),
                          iconHP: data['list'][i + 1]['weather'][0]['main'] ==
                                      'Clouds' ||
                                  data['list'][i + 1]['weather'][0]['main'] ==
                                      "Rain"
                              ? Icons.cloud
                              : Icons.sunny,
                          temp: data['list'][i + 1]['main']['temp'].toString(),
                        ),
                    ],
                  ),
                ),*/

                SizedBox(
                  height: 120.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        final hourlyforcaste = data['list'][index + 1];
                        final threeHourlyTime =
                            hourlyforcaste['main']['temp'] - 273.15;
                        final hourlySky =
                            data['list'][index + 1]['weather'][0]['main'];
                        final time = DateTime.parse(hourlyforcaste['dt_txt']);
                        return HourlyForcastItem(
                          time: DateFormat.j().format(time),
                          temp: threeHourlyTime.toStringAsFixed(2),
                          iconHP: hourlySky == 'Clouds' || hourlySky == "Rain"
                              ? Icons.cloud
                              : Icons.sunny,
                        );
                      }),
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AdditionalInfoItem(
                        icon: Icons.water_drop,
                        label: "Humidity",
                        value: currentHumidity.toString(),
                      ),
                      AdditionalInfoItem(
                        icon: Icons.air,
                        label: "Wind Speed",
                        value: windSpeed.toString(),
                      ),
                      AdditionalInfoItem(
                        icon: Icons.arrow_circle_down_rounded,
                        label: "Presure",
                        value: currentPressure.toString(),
                      ),
                    ])
              ],
            ),
          );
        },
      ),
    );
  }
}
