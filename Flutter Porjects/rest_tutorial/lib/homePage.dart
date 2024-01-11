import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_tutorial/Models/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Modle> postList = [];

  Future<List<Modle>> getPostAPI() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList.add(Modle.fromJson(i));
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
        title: const Text('REST API '),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostAPI(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.orange,
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 6.0,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('idNO. -- ' +
                                      postList[index].id.toString()),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Titel:\n' +
                                      postList[index].title.toString()),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Content:\n' +
                                      postList[index].body.toString()),
                                ]),
                          );
                        });
                  }
                }),
          ),
        ],
      ),
    );
  }
}
