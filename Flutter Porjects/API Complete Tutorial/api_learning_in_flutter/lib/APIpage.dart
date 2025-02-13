import 'dart:convert';

import 'package:api_learning_in_flutter/Model.dart';
import 'package:api_learning_in_flutter/listItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIPage extends StatefulWidget {
  const APIPage({super.key});

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> {
  List<Model> postList = [];

  Future<List<Model>> getUserData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList.add(Model.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API Integration",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
        elevation: 2.0,
        leading: const Icon(CupertinoIcons.back),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.orange,
              ),
            );
          }
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return SizedBox(
            height: MediaQuery.of(context).size.height - 00,
            child: ListView.builder(
                itemCount: postList.length,
                itemBuilder: (context, index) {
                  return ItemList(
                      id: "id: " + postList[index].id.toString(),
                      name: "Name: " + postList[index].name.toString(),
                      email: "Email: " + postList[index].email.toString(),
                      companyName:
                          "Company: " + postList[index].company.toString(),
                      city: "city",
                      phone: "Phone: " + postList[index].phone.toString());
                }),
          );
        },
      ),
    );
  }
}
