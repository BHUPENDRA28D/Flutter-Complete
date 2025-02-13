// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String id;
  final String name;
  final String email;
  final String companyName;
  final String city;
  final String phone;

  const ItemList({
    Key? key,
    required this.id,
    required this.name,
    required this.email,
    required this.companyName,
    required this.city,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      margin: EdgeInsets.all(12),
      child: Column(children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(24.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Employees Detail",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  id,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Company Detail",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  companyName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  city,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  phone,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )),
      ]),
    );
  }
}
