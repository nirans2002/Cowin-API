import 'package:flutter/material.dart';

class OnProgress extends StatelessWidget {
  const OnProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Spacer(),
          Text(
            'Page under construction',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            "Visit again later",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 40),
          CircularProgressIndicator(),
          Spacer(),
        ],
      )),
    );
  }
}
