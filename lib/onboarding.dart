import 'dart:ffi';

import 'package:flutter/material.dart';

import 'login screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Image.asset(
        "assets/onback.png",
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Padding(
             padding: EdgeInsets.only(left: 10,top: 160),
             child: Text("Kolkata's",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
           ),
            Padding(
              padding: EdgeInsets.only(left: 10,),
              child: Text("Best fresh meet online",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,),
              child: Text("any time",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
           SizedBox(
             height: 30,
           ),

           Padding(
             padding: EdgeInsets.all(30),
            child:  Image.asset(
                "assets/Urbanfoody.png"
            ),
           ),
            Text("Fresh meet any time",style: TextStyle(color: Colors.white,fontSize: 20),)
          ],
          ),
          InkWell(
            onDoubleTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
      ]


    ));
  }
}
