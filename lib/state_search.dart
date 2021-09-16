// file not used

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'modal/modal.dart';
import 'dart:convert';

class StateSearch extends StatefulWidget {
  const StateSearch({Key? key}) : super(key: key);

  @override
  _StateSearchState createState() => _StateSearchState();
}

class _StateSearchState extends State<StateSearch> {
  @override
  void initState() {}

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
                onPressed: () {},
                child: Text("press"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
