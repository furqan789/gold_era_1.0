import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gold/RingPredict.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gold/sign_up_new.dart';
import 'package:flutter/services.dart';




class login_new extends StatefulWidget {
  @override
  _login_newState createState() => _login_newState();
}

class _login_newState extends State<login_new> {
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
                        margin: EdgeInsets.only(top:300),
                        height: MediaQuery.of(context).size.height*0.6,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Get Started', style: GoogleFonts.raleway(fontSize: 27,fontWeight: FontWeight.w700,color:Color(0xff505050)),),
                              Padding(
                                padding: const EdgeInsets.only( bottom: 5,top: 25),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'Name',
                                      hintStyle: TextStyle(color: Color(
                                          0xffa59f9f),fontSize: 17)


                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
                              Container(
                                padding: EdgeInsets.only(bottom: 30,top:18),

                                child: Row(

                                  children: [
                                    SizedBox(
                                      height:24,
                                      width: 24,
                                      child: Checkbox(value: this.subvalue, onChanged: (bool value) {
                                        setState(() {
                                          this.subvalue = value;
                                        },);
                                      }),
                                    ),
                                    SizedBox(width: 12,),
                                    RichText(
                                      text: TextSpan(
                                        text: 'I agree to the',
                                        style:TextStyle(color: Color(0xff505050),letterSpacing: 1),
                                        children: <TextSpan>[
                                          TextSpan(text: ' T&C ', style: TextStyle(color: Color(
                                              0xfff3a922),)),
                                          TextSpan(text: 'and'),
                                          TextSpan(text: ' Privacy Policy',style: TextStyle(color: Color(
                                              0xfff3a922),)),
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                              Center(
                                child: InkWell(
                                  onTap: null,

                                  child: Container(
                                    height:50,
                                    width:MediaQuery.of(context).size.width,//set your height here
                                    //set your width here
                                    decoration: BoxDecoration(
                                        color: Color(0xffF5BA4C),
                                        borderRadius: BorderRadius.all(Radius.circular(8))

                                    ),
                                    child: Center(child: Text('Sign Up', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18.5,fontWeight: FontWeight.w600,
                                        ),)),
                                  ),
                                ),
                              ),
                              Spacer(),

                              Center(
                                child: Column(
                                  children: [
                                    Text('Already have an account ?',style: TextStyle(color: Color(0xff505050)),),SizedBox(height: 4,),
                                    GestureDetector(onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => sign_up_new()));
                                    },child: Text('Log In',style: TextStyle(color:Color(0xffF5BA4C),fontSize: 15,fontWeight: FontWeight.w600
                                    ))),
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
