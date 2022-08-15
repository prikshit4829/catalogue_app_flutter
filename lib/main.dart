import 'package:catalogue_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:catalogue_app/pages/home_page.dart';
import 'package:catalogue_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primarySwatch: Colors.amber), //works on when ThemeMode.light
      darkTheme:
          ThemeData(brightness: Brightness.dark), //works on when ThemeMode.dark
      // initialRoute: "/home", //for testing purpose
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
