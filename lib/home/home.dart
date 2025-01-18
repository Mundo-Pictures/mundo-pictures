import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mundo_pictures/styles/buttons/primary-button.dart';
import 'package:mundo_pictures/components/comments.dart';
import 'package:mundo_pictures/components/videos.dart';
import 'package:mundo_pictures/components/nextVideos.dart';
import 'package:mundo_pictures/styles/textfields/primary-textfields.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void uploadButtonHandler() {
    String something = "something";
  }

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: PrimaryTextField(
                            hintText: "Search...", labelText: "Search")),
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
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: PrimaryButton(
                    onPressedAction: uploadButtonHandler,
                    childWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload_sharp,
                          size: 18,
                          color: Color(0xff4d2773),
                        ),
                        Text(
                          "HACK IT UP",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4d2773)),
                        )
                      ],
                    ))),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               Videos(),
               Comments(),
               NextVideos(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
