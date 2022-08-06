import 'package:flutter/material.dart';

import 'otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Image.asset(
          "assets/backimage.png",
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        InkWell(
          child: Container(
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
          ),
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
              child: Image.asset(
                "assets/Urbanfoody.png",
                height: 90,
                width: 250,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/login.png',
                  color: Colors.white.withOpacity(0.3),
                ),
                Positioned(
                    left: 150,
                    top: 30,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                Positioned(
                    child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 75),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                                hintText: 'Enter Your Name',
                                contentPadding: EdgeInsets.only(left: 10),
                                hintStyle: TextStyle(color: Color(0xffFFFFFF))),
                          ),
                        ))),
                Positioned(
                    top: 130,
                    left: 220,
                    child: Text(
                      'Forgot Mobile No.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                    top: 155,
                    left: 150,
                    child: GestureDetector(
                      child:  Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffFA4202), Color(0xffD81516)]),
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(Icons.arrow_forward,
                            color: Colors.white, size: 40),
                      ) ,
                      onDoubleTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Otp()));
                      },
                   )
                )
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 50.0, right: 15.0),
                    child: Divider(
                      color: Colors.white,
                      height: 50,
                    )),
              ),
              Text(
                "OR",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 50.0),
                    child: Divider(
                      color: Colors.white,
                      height: 50,
                    )),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 105),
              child: Row(
                children: [
                  Image.asset(
                    'assets/facebook.png',
                    height: 50,
                    width: 150,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text(
                    "Don't Have An Account ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xffFA4202)),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
