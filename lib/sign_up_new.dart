import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gold/RingPredict.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gold/login_new.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gold/Admin.dart';





class sign_up_new extends StatefulWidget {
  @override
  _sign_up_newState createState() => _sign_up_newState();
}

class _sign_up_newState extends State<sign_up_new> {
  @override
  bool subvalue = false;
  bool _isObscure = true;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
      ),
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/sign_up_bg.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.6,
                        margin: EdgeInsets.only(top:300),
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  offset: Offset(0, -7.0)
                              )
                            ],
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:50.0,left:40,right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome Back', style: GoogleFonts.raleway(fontSize: 27,fontWeight: FontWeight.w700,color:Color(0xff505050)),),

                              Padding(
                                padding: const EdgeInsets.only(top: 40, bottom: 8),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                  ],


                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'Phone Number',
                                    hintStyle: TextStyle(color: Color(
                                        0xffa59f9f),fontSize: 17)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                child: TextFormField(
                                  obscureText: _isObscure,
                                  enableSuggestions: false,
                                  autocorrect: false,

                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'Password',
                                      suffixIcon: IconButton(
                                          icon: Icon(
                                              _isObscure ? Icons.visibility : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          }),
                                      hintStyle: TextStyle(color: Color(
                                          0xffa59f9f),fontSize: 17)
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(top:8.0,bottom: 30),
                                child: Align(alignment:Alignment.centerRight,child: Text('Forgot Passcode?',style: TextStyle(color: Color(
                                    0xff505050).withOpacity(0.8),letterSpacing: 1,decoration: TextDecoration.underline),)),
                              ),



                              Center(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Admin()));
                                  },

                                  child: Container(
                                    height:50,
                                    width:MediaQuery.of(context).size.width,//set your height here
                                    //set your width here
                                    decoration: BoxDecoration(
                                        color: Color(0xffF5BA4C),
                                        borderRadius: BorderRadius.all(Radius.circular(8))

                                    ),
                                    child: Center(child: Text('Log in', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 21.5,fontWeight: FontWeight.w500,),)),
                                  ),
                                ),
                              ),
                              Spacer(),

                              Center(
                                child: Column(
                                  children: [
                                    Text("Don't have an account ?",style: TextStyle(color: Color(0xff505050)),),SizedBox(height: 4,),

                                  GestureDetector(onTap:(){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => login_new()));
                                  },child: Text('Register',style: TextStyle(color:Color(0xffF5BA4C),fontSize: 15,fontWeight: FontWeight.w600)))
                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    )




                  ],
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
