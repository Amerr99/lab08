import 'package:flutter/material.dart';
import 'package:lab08/components/myClass.dart';
import 'package:lab08/screens/Screens.dart';
import 'package:lab08/screens/fridges.dart';
import 'package:lab08/screens/screen4.dart';
import 'package:lab08/screens/screen5.dart';
import 'package:lab08/screens/screen6.dart';
import 'package:lab08/screens/washing.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fridges"),
        
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
                  Product(imageProduct: 'images/fridge2.jfif', nameProduct: "Fridge1", priceProduct: "200\$", ontap: () {
                    setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FirstScreen();
                    },));
                    });
                  },),
                    Product(imageProduct: 'images/Fridge3.jfif', nameProduct: "Fridge2", priceProduct: "250\$", ontap: () {
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
               Product(imageProduct: 'images/Fridge4.jfif', nameProduct: "Fridge3", priceProduct: "150\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Washing();
                 },));
                 });
               },),
                Product(imageProduct: 'images/Fridge5.jfif', nameProduct: "Fridge4", priceProduct: "450\$", ontap: () {
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
               Product(imageProduct: 'images/Fridge6.jfif', nameProduct: "Fridge5", priceProduct: "750\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Laptops();
                 },));
                 });
               },),
                Product(imageProduct: 'images/Fridge7.jfif', nameProduct: "Fridge6", priceProduct: "50\$", ontap: () {
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