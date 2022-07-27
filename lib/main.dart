import 'package:flutter/material.dart';
import 'package:catalogue_app/pages/home_page.dart';
import 'package:catalogue_app/pages/login_page.dart';

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
          primarySwatch: Colors.amber), //works on when ThemeMode.light
      darkTheme:
          ThemeData(brightness: Brightness.dark), //works on when ThemeMode.dark
      initialRoute: "/home", //for testing purpose
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
