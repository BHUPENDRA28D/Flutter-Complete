import 'package:flutter/material.dart';
import 'package:wheater_app/styles.dart';

class HourlyForcastItem extends StatelessWidget {
  const HourlyForcastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "9.00 am",
                style: wfcTime,
              ),
              SizedBox(
                height: 8,
              ),
              Icon(Icons.cloud, size: 40),
              SizedBox(
                height: 8,
              ),
              Text("356.12"),
            ],
          ),
        ),
      ),
    );
  }
}
