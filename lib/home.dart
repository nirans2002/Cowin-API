import 'package:cowin_api/onprogress.dart';
import 'package:cowin_api/singleuser.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome Page"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: const Text("Search States"),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnProgress()),
                    );
                  },
                  child: const Text("Search by pincode"),
                ),
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ));
  }
}
