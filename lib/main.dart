import 'package:bmi/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          canvasColor: Colors.black,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black),
            headline3: TextStyle(
                fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),
            headline1: TextStyle(
                fontSize: 45, fontWeight: FontWeight.w800, color: Colors.white),
          )),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
