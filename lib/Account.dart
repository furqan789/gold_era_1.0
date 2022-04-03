
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gold/constants.dart';


class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          height: size.height * 0.5,
          width: MediaQuery.of(context).size.width,

          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 30),
                height: size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Profile Picture',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 32,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 3.0),
                              blurRadius: 5.0,
                              color: Color(0xff465E6B),
                            ),
                            Shadow(
                              offset: Offset(2.0, 3.0),
                              blurRadius: 5.0,
                              color: Colors.black12,
                            ),
                          ],

                        ),

                      ),
                    ),

                    Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.passthrough,
                      children: [
                        CircleAvatar(
                          radius: 85,
                          backgroundColor: kTextColor,
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),

                          ),
                        ),
                        Positioned(
                            right:-10,
                            bottom:-1,
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 2.0,
                              fillColor: Color(0xFFF5F6F9),
                              child: Icon(Icons.camera_alt_outlined, color: kTextColor,size: 30,),
                              padding: EdgeInsets.all(8.0),
                              shape: CircleBorder(),
                        ))
                      ],


                    )


                  ],
                ),
              ),

            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 35, top: 20, right: 35),
          height: size.height * 0.3,
          width: MediaQuery.of(context).size.width,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 22),),
                  onPressed: (){},
                  child: Text('Account', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold), )
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 8),
                child: Container(
                  height: 1.2,
                  color: Color(0xffcdb196),
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 22),),
                  onPressed: (){},
                  child: Text('History', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 8),
                child: Container(
                  height: 1.2,
                  color: Color(0xffcdb196),
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 22),),
                  onPressed: (){},
                  child: Text('Settings', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),)
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 8),
                child: Container(
                  height: 1.2,
                  color: Color(0xffcdb196),
                ),
              ),

            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  color: kTextColor,
                ),
              ),
              TextButton(

                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(12.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),

                ),
                onPressed: () {},
                child: Container(
                  width: 100,
                  child: Row(

                    children: [
                      Text('Logout',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      SizedBox(width: 10,),
                      Icon(Icons.logout)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
