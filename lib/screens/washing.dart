import 'package:flutter/material.dart';

class Washing extends StatefulWidget {
  const Washing({super.key});

  @override
  State<Washing> createState() => _WashingState();
}

class _WashingState extends State<Washing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color:Colors.amber),
            child: Text("This is our Washing Mashines",style: TextStyle(fontSize: 30,color:Colors.lightBlue),),
          ),
          Row(children: [
            
            
          ],)
        ],
      ),
    );
  }
}