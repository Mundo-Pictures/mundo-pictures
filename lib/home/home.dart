import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'img/brainflix-logo.png',
              width: 25,
            ),
            SizedBox(width: 10),
            Text(
              "BrainFlix",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(20),
              child: const Text("search bar")),
          Container(
            color: Colors.brown[300],
            padding: EdgeInsets.all(20),
            child: const Text("upload"),
          )
        ],
      ),
    );
  }
}
