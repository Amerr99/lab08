import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:lab08/components/myClass.dart';
import 'package:lab08/screens/Screens.dart';
import 'package:lab08/screens/fridges.dart';
import 'package:lab08/screens/screen4.dart';
import 'package:lab08/screens/screen5.dart';
import 'package:lab08/screens/screen6.dart';
import 'package:lab08/screens/washing.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Screens"),
      ),
      body: ListView(
        
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color:Color.fromARGB(255, 220, 220, 220),borderRadius: BorderRadius.circular(40)),
            child: Text("Enjoy our collection",style: TextStyle(fontSize: 30,color:Colors.lightBlue),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               TextField(
              // onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
              Row(
                children: [
                  Product(imageProduct: 'images/Screen1.jfif', nameProduct: "Screen1", priceProduct: "200\$", ontap: () {
                    setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FirstScreen();
                    },));
                    });
                  },),
                    Product(imageProduct: 'images/Screen2.jfif', nameProduct: "Screen2", priceProduct: "250\$", ontap: () {
                     setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                       return Screens();
                     },));
                     });
                   },),
                 
                ],
              ),
          
           Row(
             children: [
               Product(imageProduct: 'images/Screen3.jfif', nameProduct: "Screen3", priceProduct: "150\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Washing();
                 },));
                 });
               },),
                Product(imageProduct: 'images/Screen4.jfif', nameProduct: "Screen4", priceProduct: "450\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Phones();
                 },));
                 });
               },),
             
             ],
           ),
           Row(
             children: [
               Product(imageProduct: 'images/Screen5.jfif', nameProduct: "Screen", priceProduct: "750\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Laptops();
                 },));
                 });
               },),
                Product(imageProduct: 'images/Screen6.jfif', nameProduct: "Screen6", priceProduct: "50\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Microwave();
                 },));
                 });
               },),
             
             ],
           )
             ],
          ),
        ],
      ),
    );
  }
}