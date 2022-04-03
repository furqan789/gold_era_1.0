import 'package:flutter/material.dart';
import 'package:flutter_gold/bottom.dart';
import 'package:flutter_gold/constants.dart';
import 'package:flutter_gold/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Bottom(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(

      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: kTextColor,
          size: 30,
        ),
      ),

    );

  }
}