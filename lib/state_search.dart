// // file not used

// import 'package:cowin_api/modal/modal.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class StateSearch extends StatefulWidget {

//   @override
//   _StateSearchState createState() => _StateSearchState();
// }

// Future<States> getData() async {
//   var states;
//   var response = await http.get(
//     Uri.parse('https://cdn-api.co-vin.in/api/v2/admin/location/states'),
//     headers: {"Accept": "application/json"},
//   );
//   if (response.statusCode == 200) {
//     var jsonString = response.body;
//     Map<String, dynamic> jsonMap = json.decode(jsonString);

//     states = states.fromJson(jsonMap);
//     return states;
//   } else {
//     throw Exception('Failed to fetch data!');
//   }
// }

// class _StateSearchState extends State<StateSearch> {
//   late Future<States> states;

//    @override
//   void initState() {
//     states = getData();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("API"),
//       ),
//       body: SafeArea(
//         child: Container(
//           child :  FutureBuilder<States>(
//           future: states,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: snapshot.data!.totalCount > 20
//                     ? 20
//                     : snapshot.data!.totalCount,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//               title: Text(snapshot.data!.states[index].state_name),
//               // subtitle: Text(snapshot.data!.states[index].state_id),
//             );
//                 });
//       ),
//     );
//   }
// }

