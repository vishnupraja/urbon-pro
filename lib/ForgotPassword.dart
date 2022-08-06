import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Image.asset("assets/backimage.png",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top : 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(
                 padding: EdgeInsets.only(left: 20),
                 child:  Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(50)
                   ),
                   child: Icon(Icons.keyboard_arrow_left_sharp,
                     size: 40,
                     color: Colors.red,
                   ),

                 ),
               ),
                SizedBox(
                  height: 20,
                ),
                Padding(

                  padding: EdgeInsets.only(left: 20),
                  child:  Text("Enter the email associated with your\n "
                      "account we will send you a email to reset\n"
                      " your number",style: TextStyle(fontSize: 14,color: Colors.white),),
                ),
                   SizedBox(
                     height: 30,
                   ),
                Stack(
                  children: [
                    Image.asset("assets/login.png")
                  ],
                )
              ],
            ),


          )
        ],
      ),
    );
  }
}
