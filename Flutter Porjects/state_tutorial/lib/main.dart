import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_tutorial/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
    // return CupertinoApp(
    //   theme: CupertinoThemeData(
    //     brightness: Brightness.light,
    //     barBackgroundColor: Color.fromARGB(201, 214, 128, 91),
    //   ),
    //   home: HomePage(),
    // );
  }
}

class Homepage {}





// class HomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _HomePageState();
//   }
// }

// class _HomePageState extends State<HomePage> {
//   var counter = 0;
//   void increment() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has changed in this state,which causes it to rerun the build method and update the displays of any widgets
//       counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("State - Management")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Counte = $counter',
//                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//               ),
//               ElevatedButton(onPressed: increment, child: Icon(Icons.add))
//             ],
//           ),
//         ));
//   }
// }
