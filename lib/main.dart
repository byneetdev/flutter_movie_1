// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_ui/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movie UI',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF1D2027),
        backgroundColor: Color(0xFF1D2027),
        primaryColor: Color(0xFF546EE5),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline1: GoogleFonts.poppins(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          headline2: GoogleFonts.poppins(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          headline3: GoogleFonts.poppins(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 16.0,
            color: Color(0xFFB2B5BB),
            fontWeight: FontWeight.normal,
          ),
          bodyText2: GoogleFonts.poppins(
            fontSize: 14.0,
            color: Color(0xFFB2B5BB),
            fontWeight: FontWeight.normal,
          ),
          subtitle1: GoogleFonts.poppins(
            fontSize: 14.0,
            color: Color(0xFF696D74),
            fontWeight: FontWeight.normal,
          ),
          subtitle2: GoogleFonts.poppins(
            fontSize: 12.0,
            color: Color(0xFF696D74),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
