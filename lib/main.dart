import 'package:cowin_api/state_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StateSearch(),
      debugShowCheckedModeBanner: false,
    );
  }
}
