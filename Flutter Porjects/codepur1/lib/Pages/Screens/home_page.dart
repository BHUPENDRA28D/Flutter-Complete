import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imgUrl = "";
  Future<String> getData() async {
    var data = await http.get(Uri.parse("https://meme-api.com/gimme"));

    return jsonDecode(data.body)['url'];
  }

/*  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var url = getData();
    setState(() {
      imgUrl = url.toString();
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Meme App",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 5.0,
          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: double.infinity,
                    child: FutureBuilder(
                        future: getData(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Image.network(snapshot.data.toString());
                          }

                          if (snapshot.hasError) {
                            return const Text(
                              "An error occured",
                            );
                          }

                          return Transform.scale(
                            scale: 0.1,
                            child: const CircularProgressIndicator(),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: MaterialButton(
                      onPressed: () {
                        var url = getData();
                        print(url);
                        setState(() {
                          imgUrl = url.toString();
                        });
                      },
                      color: Colors.black,
                      child: const Text("Next",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ])),
          )),
    );
  }
}
