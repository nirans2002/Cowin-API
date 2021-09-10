import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String? stringResponse;
Map? mapResponse;
Map? dataResponse;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future apicall() async {
    http.Response response;
    response = await http.get(
      Uri.parse('https://reqres.in/api/users/2'),
      headers: {"Accept": "application/json"},
    );
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
        dataResponse = mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: mapResponse == null
              ? Text('failed to fetch data')
              : Text(dataResponse!['email'].toString()),
        ),
      ),
    );
  }
}
