import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future apicall() async {
    http.Response response;
    response = await http.get(
      Uri.parse('https://cdn-api.co-vin.in/api/v2/admin/location/states'),
      headers: {"Accept": "application/json"},
    );
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse!['states'];
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
      appBar: AppBar(title: const Text("Homepage")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(listResponse![index]['state_id'].toString()),
              subtitle: Text(listResponse![index]['state_name'].toString()),
            ),
          );
        },
        itemCount: listResponse == null ? 0 : listResponse!.length,
      ),
    );
  }
}
