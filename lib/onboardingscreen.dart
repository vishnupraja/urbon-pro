import 'dart:ui';

import 'package:flutter/material.dart';

class OnboardinScreen extends StatefulWidget {
  const OnboardinScreen({Key? key}) : super(key: key);

  @override
  State<OnboardinScreen> createState() => _OnboardinScreenState();
}

class _OnboardinScreenState extends State<OnboardinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/onback.png",),
              fit: BoxFit.cover,
            ),
        ),
        child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child:  Container(
    color: Colors.black.withOpacity(0.1),
        ),
          ),
          ),


        ]));
  }
}
