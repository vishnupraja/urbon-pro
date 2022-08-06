import 'package:flutter/material.dart';

import 'onboarding.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  List<dynamic> gurantees = [
    {
      "id":"1",
      "title":"Quality",
      "subtitle":"You can trust",
      "image": "assets/1st.png"
    },
    {
      "id":"2",
      "title":"Click and Collect Available",
      "subtitle":"with unlimited slots",
      "image": "assets/2nd.png"
    },
    {
      "id":"3",
      "title":"Free Delivery",
      "subtitle":"On Order Above 500",
      "image": "assets/3rd.png"
    },
    {
      "id":"4",
      "title":"Return Policy",
      "subtitle":"No Questions Asked",
      "image": "assets/4th.png"
    },


  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset(
              "assets/backimage.png",
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Center(
              child:  Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:125 ),
                    child: Text("Our Guarantees",style: TextStyle(fontSize: 20,color: Color(0xffFFFFFF)),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/1.6,
                    child:  ListView.builder(
                        itemCount: gurantees.length,
                        itemBuilder: (context,i){
                          return   Container(
                            height: 90,
                            width: 300,
                            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.2)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child:  Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFF3148),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Image.asset(
                                          "${gurantees[i]['image']}",
                                        ),
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 25,left:10),
                                  child:  Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Text('${gurantees[i]["title"]}',style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("${gurantees[i]["subtitle"]}",style: TextStyle(color: Color(0xffD9D9D9),fontSize: 10),)
                                    ],

                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding()));
                  },
                  child:  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xffFA4202),
                        borderRadius: BorderRadius.circular(30)

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Next",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20),),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff202442),

                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,color: Color(0xffFFFFFF),
                          ),
                        )
                      ],
                    ),
                  ) ,
                )







                ],
              ),
            ),

          ],
        ),
      );

  }
}
