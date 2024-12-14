import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // toolbarHeight: 40,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "/svg/hatchet.svg",
              width: 25,
            ),
            SizedBox(width: 5),
            Text(
              "Mundo Pictures",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xffb0c0ba)),
            ),
            Transform.translate(
                offset: const Offset(-5, 0),
                child: SvgPicture.asset(
                  "/svg/play-button.svg",
                  width: 40,
                )),
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
