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
        title: 'Flutter Demo',
        initialRoute: "/",
        routes: {
          "/": (BuildContext build) => HomePage(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4CAF50)),
          useMaterial3: true,
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 18,
              color: Colors.grey[800],
            ),
          ),
        ));
  }
}
