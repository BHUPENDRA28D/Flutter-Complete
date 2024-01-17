import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes/global_variables.dart';
import 'package:shoes/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Border final

  final borderr = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)));

  //Making a List
  final List<String> filters = [
    'All',
    'Adidas',
    'Nike',
    'RedCheif',
    'Puma',
    'Bata'
  ];

  late String selectedFilter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Shoes\nCollection',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  )),
            ),
            Expanded(
                child: TextField(
                    decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: const Icon(CupertinoIcons.search),
              border: borderr,
              enabledBorder: borderr,
              focusedBorder: borderr,
            ))),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      selectedFilter = filter;
                      print("hi");
                    },
                    child: Chip(
                        backgroundColor: (selectedFilter == filter)
                            ? Theme.of(context).colorScheme.primary
                            : Color.fromRGBO(245, 247, 249, 1),
                        side: const BorderSide(
                          color: Color.fromRGBO(245, 247, 249, 1),
                        ),
                        label: Text(filter),
                        labelStyle: const TextStyle(fontSize: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                );
              }),
        ),
        // Product List
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                title: product['title'] as String,
                price: product['price'] as double,
                image: product['imageUrl'] as String,
                backgroundColor: (index.isEven)
                    ? Color.fromRGBO(216, 240, 253, 1)
                    : Color.fromRGBO(245, 247, 249, 1),
              );
            },
          ),
        )
      ]),
    ));
  }
}
