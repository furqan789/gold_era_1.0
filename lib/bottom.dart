import 'package:flutter/material.dart';
import 'package:flutter_gold/body.dart';
import 'package:flutter_gold/constants.dart';
import 'package:flutter_gold/predict.dart';
import 'package:flutter_gold/Account.dart';
import 'package:flutter_gold/Cart.dart';




class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex=0;
  final tabs =[
    Body(),
    Predict(),
    Cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xff505050).withOpacity(0.6),
        selectedItemColor: Color(0xffffffff),
        backgroundColor: Color(0xffF5BA4C),
        currentIndex: _currentIndex,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label:'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_sharp),
            label:'Predict',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label:'Cart',
          ),
        ],
        onTap:(index){

          setState(() {
            _currentIndex=index;
          });

        },
      ),

    );
  }
}