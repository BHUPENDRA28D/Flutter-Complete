// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'package:rest_get_api_users/Model/collegeModel.dart';

// class CollegePage extends StatefulWidget {
//   const CollegePage({super.key});

//   @override
//   State<CollegePage> createState() => _CollegePageState();
// }

// class _CollegePageState extends State<CollegePage> {
//   List<CollegeModel> collegeList = [];

//   Future<List<CollegeModel>> getCollegeData() async {
//     final response = await http.get(Uri.parse(
//         'https://raw.githubusercontent.com/VarthanV/Indian-Colleges-List/master/colleges.json'));

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       print(data);
//       for (Map<String, String> i in data) {
//         collegeList.add(CollegeModel.fromJson(i));
//       }
//       return collegeList;
//     } else {
//       return collegeList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 6,
//           title: Text("Rest API UsersDATA"),
//           centerTitle: true,
//         ),
//         body: Column(children: [
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Expanded(
//                 child: FutureBuilder(
//                     future: getCollegeData(),
//                     builder:
//                         ((context, AsyncSnapshot<List<CollegeModel>> snapshot) {
//                       if (!snapshot.hasData) {
//                         return Center(
//                             child: CircularProgressIndicator(
//                           backgroundColor: Colors.white,
//                         ));
//                       } else {
//                         return ListView.builder(
//                             itemCount: collegeList.length,
//                             itemBuilder: (context, index) {a
//                               return Card(
//                                 elevation: 5.0,
//                                 margin: EdgeInsets.symmetric(
//                                     vertical: 3.0, horizontal: 16.0),
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(5)),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       ReUsableRow(
//                                           title: 'University',
//                                           value: snapshot
//                                               .data![index].university
//                                               .toString()),
//                                       ReUsableRow(
//                                           title: 'College',
//                                           value: snapshot.data![index].college
//                                               .toString()),
//                                       ReUsableRow(
//                                           title: 'state',
//                                           value: snapshot.data![index].state
//                                               .toString()),
//                                       ReUsableRow(
//                                           title: 'district',
//                                           value: snapshot.data![index].district
//                                               .toString()),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             });
//                       }
//                     }))),
//           )
//         ]));
//   }
// }

// class ReUsableRow extends StatelessWidget {
//   String title, value;
//   ReUsableRow({
//     Key? key,
//     required this.title,
//     required this.value,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(value)
//         ],
//       ),
//     );
//   }
// }
