import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blueGrey[200],
          padding: EdgeInsets.all(20),
          child: Text("Home Page")),
    );
  }
}
