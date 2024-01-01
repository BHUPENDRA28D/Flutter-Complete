import 'package:flutter/material.dart';
import 'package:wheater_app/items/styles.dart';

class HourlyForcastItem extends StatelessWidget {
  final String time;
  final String temp;
  final IconData iconHP;

  const HourlyForcastItem(
      {super.key,
      required this.time,
      required this.temp,
      required this.iconHP});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                time,
                style: wfcTime,
              ),
              const SizedBox(
                height: 8,
              ),
              Icon(iconHP),
              const SizedBox(
                height: 8,
              ),
              Text(temp),
            ],
          ),
        ),
      ),
    );
  }
}
