import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  
String ?imageProduct;
String ?nameProduct;
String? priceProduct;
Function() ontap;
Product({required this.imageProduct,required this.nameProduct,required this.priceProduct , required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(

                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(47, 152, 221, 1).withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 7,
                          )
                        ],
                        border: Border.all(
                            color: Color.fromARGB(255, 212, 220, 235))),
                    width: 150,
                    height: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  '$imageProduct'),
                              width: 100,
                              height: 100,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '$nameProduct',
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(
                              width: 22,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$priceProduct'),
                            Icon(Icons.favorite),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ) ,
    );
  }
}