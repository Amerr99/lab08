
import 'package:flutter/material.dart';
import 'package:lab08/components/myClass.dart';
import 'package:lab08/screens/Screens.dart';
import 'package:lab08/screens/fridges.dart';
import 'package:lab08/screens/screen4.dart';
import 'package:lab08/screens/screen5.dart';
import 'package:lab08/screens/screen6.dart';
import 'package:lab08/screens/washing.dart';

void main() {
  runApp(MaterialApp(theme: ThemeData(fontFamily: "RussoOne"),home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Samsung"),
  ),
      body: 
      
      
      ListView(
        children: [
      
          Row(
            children: [
              Product(imageProduct: 'images/fridge2.jfif', nameProduct: "Fridges", priceProduct: "200\$", ontap: () {
                setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FirstScreen();
                },));
                });
              },),
                Product(imageProduct: 'images/screen1.jfif', nameProduct: "Screens", priceProduct: "250\$", ontap: () {
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
               Product(imageProduct: 'images/washing1.jfif', nameProduct: "Washing -M", priceProduct: "150\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Washing();
                 },));
                 });
               },),
                Product(imageProduct: 'images/phone1.jfif', nameProduct: "Phones", priceProduct: "450\$", ontap: () {
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
               Product(imageProduct: 'images/laptop1.jfif', nameProduct: "Laptops", priceProduct: "750\$", ontap: () {
                 setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return Laptops();
                 },));
                 });
               },),
                Product(imageProduct: 'images/micro1.jfif', nameProduct: "Microwaves", priceProduct: "50\$", ontap: () {
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
    );
  }
}
