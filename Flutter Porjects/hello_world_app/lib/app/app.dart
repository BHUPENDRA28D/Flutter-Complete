import 'package:flutter/material.dart';
import 'package:hello_world_app/views/home_view.dart';
/*/Stateless Widgets 
// widgets which are not mutable .
// widgets which do not have any state
// widgets which do not have any data*/

/*Stateful Widgets
 widgets which are mutable .
 widgets which have states
 widgets which have data
 they can change.
*/

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      home: HomeView(),
    );
  }
}
