// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:restaurantapp/4-ButtomNavBar/More/BussinsCard.dart';
import 'package:restaurantapp/4-ButtomNavBar/More/MoreAbtApp.dart';

// import 'MoreAbtDev.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More info"),
        centerTitle: true,
      ),
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 180,
              width: 360,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MoreAbtApp(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: const Text(
                  'More About the App?',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 180,
              width: 380,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BussinsCard(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: const Text(
                  'More About the Dev?',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
