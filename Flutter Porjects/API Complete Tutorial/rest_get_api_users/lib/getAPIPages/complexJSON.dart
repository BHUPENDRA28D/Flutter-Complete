import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_get_api_users/Model/hotelModel.dart';

class ComplexJsonPage extends StatefulWidget {
  const ComplexJsonPage({super.key});

  @override
  State<ComplexJsonPage> createState() => _ComplexJsonPageState();
}

class _ComplexJsonPageState extends State<ComplexJsonPage> {
  Future<HotelModel> getUserApi() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/08e6139f-601c-4a12-956e-4c3204b9b6ff'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return HotelModel.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: FutureBuilder(
            future: getUserApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.bookhotels!.length,
                  itemBuilder: ((context, index) {
                    final bookHotel = snapshot.data!.bookhotels![index];
                    return Column(
                      children: [
                        Text(bookHotel.place.toString()),
                        Text(bookHotel.place.toString()),
                        Text(bookHotel.place.toString()),
                      ],
                    );
                  }),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('${snapshot.error}'));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}
