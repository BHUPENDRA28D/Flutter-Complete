import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String course = 'Flutter';

  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cataloge App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dumyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dumyList[index],
              );
            }),
      ),
      drawer: MyDrawer(
          // backgroundColor: Colors.amber,
          // elevation: 3.23,
          ),
    );
  }
}
