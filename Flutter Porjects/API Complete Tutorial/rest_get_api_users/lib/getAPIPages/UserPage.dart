// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:rest_get_api_users/Model/userModel.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> userList = [];

  Future<List<UserModel>> getUserData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      for (Map i in data) {
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 6,
          title: Text("Rest API UsersDATA"),
          centerTitle: true,
        ),
        body: Column(children: [
          Expanded(
              child: FutureBuilder(
                  future: getUserData(),
                  builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                          child: CircularProgressIndicator(
                        backgroundColor: Colors.orange,
                      ));
                    } else {
                      return ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 4.0),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Employee Detail",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ReuseableRow(
                                        title: 'Name',
                                        value: snapshot.data![index].name
                                            .toString()),
                                    ReuseableRow(
                                        title: 'UserName',
                                        value: snapshot.data![index].username
                                            .toString()),
                                    ReuseableRow(
                                        title: 'email',
                                        value: snapshot.data![index].email
                                            .toString()),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Company Detail",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ReuseableRow(
                                        title: 'Address',
                                        value: snapshot
                                                .data![index].address!.city
                                                .toString() +
                                            "\n" +
                                            snapshot
                                                .data![index].address!.zipcode
                                                .toString()),
                                    ReuseableRow(
                                        title: 'Company',
                                        value: snapshot
                                            .data![index].company!.name
                                            .toString()),
                                    ReuseableRow(
                                        title: 'Phone',
                                        value: snapshot.data![index].phone
                                            .toString()),
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  })),
        ]));
  }
}

class ReuseableRow extends StatelessWidget {
  String title, value;

  ReuseableRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value)
        ],
      ),
    );
  }
}
