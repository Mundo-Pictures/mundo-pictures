import 'dart:ui';

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
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                        style: TextStyle(color: Color(0xff4d2773)),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "TextField",
                          hintStyle: TextStyle(color: Color(0xff4d2773)),
                          fillColor: Color(0xffb0c0ba),
                          filled: true,
                        )),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "./img/Genesis_img.jpg",
                      width: 60,
                    ),
                  ),
                ],
              )),
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
