import 'package:cowin_api/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<States> getData() async {
  var states;
  var response = await http.get(
    Uri.parse('https://cdn-api.co-vin.in/api/v2/admin/location/states'),
    headers: {"Accept": "application/json"},
  );
  if (response.statusCode == 200) {
    var jsonString = response.body;
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    states = states.fromJson(jsonMap);
    return states;
  } else {
    throw Exception('Failed to fetch data!');
  }
}

class DisplayStates extends StatefulWidget {
  @override
  _DisplayStatesState createState() => _DisplayStatesState();
}

class _DisplayStatesState extends State<DisplayStates> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
