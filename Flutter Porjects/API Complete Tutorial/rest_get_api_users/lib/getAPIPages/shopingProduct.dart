import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rest_get_api_users/Model/shopModel.dart';
import 'package:http/http.dart' as http;
import 'package:rest_get_api_users/widgets/shopProduct.dart';

class ShopingPage extends StatefulWidget {
  const ShopingPage({super.key});

  @override
  State<ShopingPage> createState() => _ShopingPageState();
}

class _ShopingPageState extends State<ShopingPage> {
  List<ShopingProductModel> product = [];
  Future<List<ShopingProductModel>> getData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      for (Map i in data) {
        product.add(ShopingProductModel.fromJson(i));
      }
      return product;
    } else {
      throw Exception('Failed to load Status Code: ${response.statusCode}');
      print(Exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        title: snapshot.data![index].title,
                        image: snapshot.data![index].image,
                        price: snapshot.data![index].price,
                        rating: snapshot.data![index].price,
                      );
                    },
                  ),
                );
              }
            }));
  }
}
