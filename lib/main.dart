import 'package:flutter/material.dart';
import 'package:mundo_pictures/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: "/",
        routes: {
          "/": (BuildContext build) => HomePage(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff4d2773)),
          scaffoldBackgroundColor: Color(0xff4d2773),
          useMaterial3: true,
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 18,
              color: Color(0xffb0c0ba),
            ),
          ),
        ));
  }
}
