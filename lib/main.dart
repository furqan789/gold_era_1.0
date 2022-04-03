import 'package:flutter/material.dart';
import 'package:flutter_gold/constants.dart';
import 'package:flutter_gold/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gold_App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //primaryColor: Colors.lightBlue,
        primaryColor: kPrimaryColor,
      ),
      home: HomeScreen(),
    );
  }
}

