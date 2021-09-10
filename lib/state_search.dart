// file not used

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';
import 'dart:convert';

class StateSearch extends StatefulWidget {
  const StateSearch({Key? key}) : super(key: key);

  @override
  _StateSearchState createState() => _StateSearchState();
}

// final List stateList;
Future<Model> getStates() async {
  var model;
  var response = await http.get(
    Uri.parse('https://cdn-api.co-vin.in/api/v2/admin/location/states'),
    headers: {"Accept": "application/json"},
  );
  if (response.statusCode == 200) {
    var jsonString = response.body;
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    model = Model.fromJson(jsonMap);
    print(Item);

    return model;
  } else {
    throw Exception('Failed to fetch !');
  }
}

class _StateSearchState extends State<StateSearch> {
  late Future<Model> model;
  @override
  void initState() {
    super.initState();
    model = getStates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Select State"),
            Center(
              child: ElevatedButton(
                onPressed: getStates,
                child: Text("press"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
