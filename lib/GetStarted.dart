import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbon/WelcomeScreen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/getstartedback.png",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Text(
                    "Welcome To",
                    style: GoogleFonts.greatVibes(
                      color: Color(0xffFFFFFF),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Image.asset(
                    "assets/Urbanfoody.png",
                    height: 60,
                  ),
                ),
              ),
              Center(
                  child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\n sed diam nonumy eirmod tempor invidunt ut labore et\n dolore magna aliquyam erat, sed diam voluptua. At vero\n eos et accusam et justo duo dolores et ea rebum. Stet clita\n                                     kasd gubergren,",
                style: TextStyle(
                    color: Color(0xffFFFFFF), fontSize: 10, height: 2),
              )),
              SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/getstartedup.png",
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

                },
                child:  Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffFA4202),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /*   InkWell(
                      onTap: () {
                        *//* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));*//*
                      },
                    ),*/
                      Text(
                        "Get Started",
                        style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xff202442),
                          ),
                          child: Expanded(
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
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
