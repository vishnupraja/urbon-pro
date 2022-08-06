import 'dart:async';

import 'package:flutter/material.dart';

import 'GetStarted.dart';
import 'WelcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => GetStarted(),
                )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
              Image.asset(
                "assets/splash.png",
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,

              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Padding(
                 padding: EdgeInsets.all(50),
                  child:  Center(
                    child: Image.asset(
                      "assets/Urbanfoody.png",

                    ),
                  ),
               )

              ],
            ),
         ],
       ),
    );
  }
}
