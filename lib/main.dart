import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_creator/view/layout_main.dart';
import 'package:workout_creator/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      theme: ThemeData(
        canvasColor: Colors.white,
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: const Color(0xFF222831),

        // Define the default font family.
        fontFamily: GoogleFonts.poppins().fontFamily,

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF222831),
          ),
          headline2: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF222831),
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF222831),
          ),
          subtitle1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF757575),
          ),
          subtitle2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF757575),
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF222831),
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF424242),
          ),
        ),
      ),
      home: const LayoutMain(
        child: SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
