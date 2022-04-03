import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gold/RingPredict.dart';


class Predict extends StatefulWidget {
  @override
  _PredictState createState() => _PredictState();
}

class _PredictState extends State<Predict> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Price Estimation',
            style: TextStyle(
                color: Color(0xff505050),
                fontWeight: FontWeight.w700,
                fontSize: 24),
          ),
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
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
                                    fontSize: 16,
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
                              child: Text('Predicted Buy Price',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF),
                                  )),
                            ),
                            Text(
                              '₹ 6506.26/gm',
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
                                    fontSize: 16,
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
                              child: Text('Predicted Buy Price',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF),
                                  )),
                            ),
                            Text(
                              '₹ 106.45/gm',
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
                Center(
                  child: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RingPredict()));},

                    child: Container(
                      height:50,
                      width:MediaQuery.of(context).size.width*0.5,//set your height here
                      //set your width here
                      decoration: BoxDecoration(
                          color: Color(0xffF5BA4C),
                          borderRadius: BorderRadius.all(Radius.circular(8))

                      ),
                      child: Center(child: Text('Choose Date', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 21.5,fontWeight: FontWeight.w600,shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(2.85, 2.85),
                            blurRadius: 3.5),
                      ]),)),
                    ),
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
