import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatesScreen extends StatefulWidget {
  const WorldStatesScreen({super.key});

  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen>
    with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat();
  //disposè function
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  final colorList = <Color>[
    Color(0xff4285F4),
    Color(0xff1aa260),
    Color(0xffde5246),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              PieChart(
                dataMap: {
                  "Total": 23,
                  "Recovered": 21,
                  "Deaths": 2,
                  // "Total": double.parse(snapshot.data!.cases!.toString()),
                  // "Recovered": double.parse(snapshot.data!.recovered!.toString()),
                  // "Deaths": double.parse(snapshot.data!.deaths!.toString()),
                },
                animationDuration: const Duration(milliseconds: 1200),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.height * 3 / 2,
                chartType: ChartType.ring,
                colorList: colorList,
                legendOptions:
                    const LegendOptions(legendPosition: LegendPosition.left),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * .06),
                  child: Column(
                    children: [
                      // columr
                      ReuseableRow(title: "Total", value: '200'),
                      ReuseableRow(title: "Total", value: '200'),
                      ReuseableRow(title: "Total", value: '200'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff1aa260),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text("Track Contouries"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Reuseable Row
class ReuseableRow extends StatelessWidget {
  String title, value;

  ReuseableRow({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(title),
              Text(value),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
        ],
      ),
    );
  }
}
