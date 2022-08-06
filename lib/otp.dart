import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:urbon/signup.dart';


class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Stack(children: [
          Image.asset(
            "assets/backimage.png",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          InkWell(
            child:  Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.red,
              ),
            ) ,
            onDoubleTap: () {
              Navigator.pop(context);
            },
          ),

          Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child:  Text("Please verify your mobile no. to continue",
                    style: TextStyle(color: Colors.white,fontSize: 17),
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/OTP.png',
                      color: Color(0xffffffff).withOpacity(0.2),
                    ),
                    Positioned(
                      left: 125,
                      top: 35,
                      child: Text(
                        'Account Verify',
                        style: TextStyle(color: Colors.white,fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 80),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: OTPTextField(
                            obscureText: true,
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 50,
                            style: TextStyle(fontSize: 17),
                            contentPadding: EdgeInsets.all(18),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            keyboardType: TextInputType.number,
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 160,
                        left: 55,
                        child: Text(
                          'Enter 4 digit OTP number sent to your phone',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )),
                    Positioned(
                      left: 155,
                      top: 227,
                      // child: InkWell(
                      //   onTap: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) => SignUp()));
                      //   },
                      child: GestureDetector(
                        child:  Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.orange,
                                    Colors.red,
                                  ]),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset("assets/icon.png"),
                          ),
                        ),
                        onDoubleTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp()));
                        },
                      )


                    ),
                    Positioned(
                      left: 265,
                      top: 255,
                      child: Text(
                        '01:24 Sec',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Resend",style: TextStyle(fontSize: 20,color: Colors.white),),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        height: 10,
                        width: 20,

                        margin: const EdgeInsets.only(left: 145.0, right: 145.0),
                        child: Divider(
                          color: Colors.red,
                          height: 10,

                        )),
                  ),
                ],
                )
              ]
          ),
        ]
        ),
      )
    );
  }
}
