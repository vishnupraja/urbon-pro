import 'package:flutter/material.dart';
import 'package:urbon/ForgotPassword.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool agree = false;
  void _doSomething() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Stack(
          children: [
            Image.asset(
              "assets/backimage.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),

            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(padding:
                  EdgeInsets.only(left: 10,top: 10),
                    child:InkWell(
                      child:  Container(
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
                      ),
                      onDoubleTap: () {
                        Navigator.pop(context);
                      },
                    )

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/Urbanfoody.png",
                      height: 60,
                      width: 400,
                    ),
                  ),
                  Stack(
                    children: [
                     Padding(
                       padding: EdgeInsets.only(left: 15),
                       child:  Image.asset('assets/sign.png',
                         color: Colors.white.withOpacity(0.4),

                         width: MediaQuery.of(context).size.width/1.1 ,
                       ),
                     ),
                       Positioned(
                         left: 150,
                           top: 30,
                           child: Text('Sign Up',style: TextStyle(fontSize: 20,color: Color(0xffFFFFFF)),)
                       ),
                     Padding(
                       padding: EdgeInsets.only(left: 45,right: 45,top: 75),
                       child:  Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                             color: Colors.white.withOpacity(0.3)
                         ),
                         child:   TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                               hintText: 'User Name',
                               contentPadding: EdgeInsets.only(left: 10,top: 12),
                               suffixIcon: Icon(Icons.search,size:15,color: Color(0xffFFFFFF),),
                             hintStyle: TextStyle(color:  Color(0xffFFFFFF),fontSize: 10)),


                           ),
                         ),
                       ),
                      Padding(
                        padding: EdgeInsets.only(left: 45,right: 45,top: 150),
                        child:  Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white.withOpacity(0.3)
                          ),
                          child:   TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                contentPadding: EdgeInsets.only(left: 10,top: 12),
                                suffixIcon: Icon(Icons.email_outlined,size:15,color: Color(0xffFFFFFF),),
                                hintStyle: TextStyle(color:  Color(0xffFFFFFF),fontSize: 10)),


                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45,right: 45,top: 225),
                        child:  Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white.withOpacity(0.3)
                          ),
                          child:   TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Mobile Number',
                                contentPadding: EdgeInsets.only(left: 10,top: 12),
                                suffixIcon: Icon(Icons.phone,size:15,color: Color(0xffFFFFFF),),
                                hintStyle: TextStyle(color:  Color(0xffFFFFFF),fontSize: 10)),


                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45,right: 45,top: 300),
                        child:  Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white.withOpacity(0.3)
                          ),
                          child:   TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Address',
                                contentPadding: EdgeInsets.only(left: 10,top: 12),
                                suffixIcon: Icon(Icons.location_on_outlined,size:15,color: Color(0xffFFFFFF),),
                                hintStyle: TextStyle(color:  Color(0xffFFFFFF),fontSize: 10)),


                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45,top: 360),
                        child: Row(
                          children: [
                            Image.asset('assets/icon1.png',height: 20,width: 20,),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child:  Text(('Get Live Location'),style: TextStyle(color:  Color(0xffFFFFFF),fontSize: 10)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30,top: 375),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // SizedBox(width: 10,),
                              Checkbox(
                              side: BorderSide(
                                  color: Colors.white,),
                                value: agree,
                                activeColor: Colors.orange,
                                onChanged: (value) {
                                  setState(() {
                                    agree = value ?? false;
                                  });
                                }),
                            Text(
                                'By signing up you agree to our terms of use and\n privacy policy ',
                                style: TextStyle(color:  Color(0xffFFFFFF),fontSize: 10),
                              ),
                          ],
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 153,top: 420),
                        child: InkWell(
                          child: Container(
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                          },
                        )


                      )


                    ],
                  ),
                ]
            )
          ],
        ),
      )

    );

  }
}
