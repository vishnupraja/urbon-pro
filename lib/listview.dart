import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('input'),
      ),
      body: ListView.builder(
        itemCount: 6,
          itemBuilder:(context, index){
          return Column(
            children: [
            Padding(
              padding: EdgeInsets.all(20),
              child:   Container(
                // padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Image.asset('assets/N_1st.png',fit: BoxFit.cover,),
                  title: Text("hello"),
                  subtitle: Text('hh'),
                ),
              ),
            )
            ],
          );
          }
      ),
    );
  }
}
