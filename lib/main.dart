import 'package:flutter/material.dart';
import 'package:urbon/GetStarted.dart';
import 'package:urbon/IntroScreen.dart';
import 'package:urbon/home.dart';
import 'package:urbon/otp.dart';
import 'package:urbon/splacescreen.dart';

import 'WelcomeScreen.dart';
import 'listview.dart';
import 'login screen.dart';
import 'onboarding.dart';
import 'onboardingscreen.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Listview(),


    );
  }
}

