import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gold/categories.dart';
import 'package:flutter_gold/Scategories.dart';
import 'package:flutter_gold/login_new.dart';

import 'package:flutter_gold/constants.dart';
import "package:http/http.dart" as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Body extends StatelessWidget {
  Future<Map<String, dynamic>> getLatestPrices() async {
    try {
      var response = await http.get(
        Uri.tryParse("https://www.goldapi.io/api/XAU/INR"),
        headers: {"x-access-token": "goldapi-5rj59ukm3bs7cl-io"},
      );

      String data = response.body;

      data = data.substring(1, data.length - 1); // get rid of curly braces
      var list = data.split(",");
      var temp = [];
      list.forEach((element) {
        temp.add(element.trim().split(":"));
      });
      Map<String, dynamic> map = {};
      temp.forEach((element) {
        element[0] = element[0].toString().substring(
            1,
            element[0].toString().length -
                1); // get rid of the extra double quotes
        map.addAll({element[0]: element[1]});
      });

      int priceOfGoldToday = (double.parse(map["price"]) / 28.35)
          .round(); //This is per gram price of gold today(on that day)

      return map;
//{"timestamp":1617261207,"metal":"XAU","currency":"INR","exchange":"IDC","symbol":"FX_IDC:XAUINR","prev_close_price":124922,"open_price":124961.6,"low_price":124961.6,"high_price":126061.8,"open_time":1617228000,"price":126025.6,"ch":1103.6,"chp":0.88,"ask":126035.6,"bid":126025.6}
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 30, top: 35),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffC4C4C4),
                  ),
                ),
                Text(
                  'Hello, Naithik',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff505050)),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    size: 30,
                    color: Color(0xff2E3A59),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.39,
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 0, right: 0),
                  decoration: BoxDecoration(
                    color: Color(0xffF5BA4C).withOpacity(0.6),
                    border: Border.all(color: Color(0xffDF9100), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/gold_bar.png',
                              scale: 35, color: Color(0xffDF9100)),
                          Text(
                            'Gold',
                            style: TextStyle(
                                color: Color(0xffDF9100),
                                fontSize: 21,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10),
                        child: Text('Live buy price',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFFFFFF),
                            )),
                      ),
                      Text(
                        '₹ 5406.98/gm',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10),
                        child: Text('Purity',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFFFFFF),
                            )),
                      ),
                      Text(
                        '24 Karat',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.39,
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 0, right: 0),
                  decoration: BoxDecoration(
                    color: Color(0xff261C1C).withOpacity(0.3),
                    border: Border.all(color: Color(0xff848484), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/gold_bar.png',
                            scale: 35,
                            color: Color(0xff848484),
                          ),
                          Text(
                            'Silver',
                            style: TextStyle(
                                color: Color(0xff848484),
                                fontSize: 21,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10),
                        child: Text('Live buy price',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFFFFFF),
                            )),
                      ),
                      Text(
                        '₹ 76.45/gm',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10),
                        child: Text('Purity',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFFFFFF),
                            )),
                      ),
                      Text(
                        '925',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 26, right: 26),
            child: Row(
              children: [
                Text(
                  'Brand Collection',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff505050),
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => login_new()));
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: Color(0xff505050).withOpacity(0.7),
                          fontSize: 16),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3A3A3A).withOpacity(0.2),
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Color(0xff0C0C0C).withOpacity(0.28),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/brands.png'),
                    fit: BoxFit.contain,
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Column(
                  children: [
                    Text(
                      'PROPOSAL RINGS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6),
                    ),
                    Text(
                      'LUXURY JEWELERY',
                      style: TextStyle(
                          letterSpacing: 5,
                          color: Colors.white.withOpacity(0.8)),
                    ),
                    Spacer(),
                    Text(
                      'GOLD ERA COLLECTION',
                      style: TextStyle(
                          color: Color(0xffC5A879), letterSpacing: 1.5),
                    ),
                    Text(
                      '25th March - Release Date',
                      style:
                          TextStyle(letterSpacing: 2, color: Color(0xff505050),fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 26, right: 26),
            child: Row(
              children: [
                Text(
                  'Gold Categories',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff505050),
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Categories()));
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: Color(0xff505050).withOpacity(0.7),
                          fontSize: 16),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 140,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.35,
              ),
              items: [
                //1st Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/ringgs.png',
                        height: 65,
                      ),
                      Text(
                        'Rings',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),

                //2nd Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/coin.png',
                        height: 70,

                      ),
                      Text(
                        'Coins',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),

                //3rd Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/earings.png',
                        height: 70,
                      ),
                      Text(
                        'Earrings',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),

                //4th Image of Slider

                //5th Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/biscuitss.png',
                        height: 70,
                      ),
                      Text(
                        'Buiscuits',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 26, right: 26),
            child: Row(
              children: [
                Text(
                  'Silver Categories',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff505050),
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scategories()));
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: Color(0xff505050).withOpacity(0.7),
                          fontSize: 16),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 140,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.35,
              ),
              items: [
                //1st Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/silver_ring.png',
                        height: 75,
                      ),
                      Text(
                        'Rings',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),

                //2nd Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/coin.png',
                        height: 70,
                      ),
                      Text(
                        'Coins',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),

                //3rd Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/earings.png',
                        height: 70,
                      ),
                      Text(
                        'Earrings',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),

                //4th Image of Slider

                //5th Image of Slider
                Container(
                  width: 115,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Color(0xffEBEBEB),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/silver_pendants.png',
                        height: 75,
                      ),
                      Text(
                        'Pendants',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
