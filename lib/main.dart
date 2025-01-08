import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mundo_pictures/home/home.dart';
import 'package:mundo_pictures/styles/colors/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SemanticsBinding.instance.ensureSemantics();
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
              bodyLarge: GoogleFonts.dmSans(
fontSize: 16,
fontWeight: FontWeight.w400,
color: AppColor.primaryGray,
              ),
              titleSmall: GoogleFonts.dmSerifText(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              titleLarge: GoogleFonts.dmSerifText(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.primaryGray,),
                labelLarge: GoogleFonts.dmSans(
                  fontSize:16,
                  fontWeight: FontWeight.w400,
                )
              )),
        );
  }
}
