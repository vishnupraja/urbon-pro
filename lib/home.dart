import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xff202442),
          leading: Container(
           margin: EdgeInsets.only(left: 20,bottom: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drawericon.png',)
              )
            ),
          ),
        actions: [
         Padding(
           padding: EdgeInsets.only(right: 10,bottom: 20),
           child:      Container(
             margin: EdgeInsets.all(20),
             height: 20,
             width: 40,
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20)
             ),

             child:  Icon(Icons.notifications_none_outlined,color: Colors.black,),
           ),
         )

        ],

              )

            );

  }
}
