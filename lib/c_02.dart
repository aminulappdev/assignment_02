import 'dart:ui';

import 'package:flutter/material.dart';

class C02 extends StatelessWidget {
  const C02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        //height: double.infinity,
        //width: double.infinity,
        child: Container(
          height: 700,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 174, 215, 229),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Icon(Icons.arrow_back),
                        ),
                        SizedBox(width: 30),
                        Text('Checkout', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Merina Akter',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '+88001308 620 588',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(width: 185),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Text('Home', style: TextStyle(fontSize: 10)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '123 Main Street Berlin Germany,',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text('10115', style: TextStyle(fontSize: 13)),
                          ],
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.location_on),
                        SizedBox(width: 75),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Delivery Option',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 130),
                        Text('All Options', style: TextStyle(fontSize: 12)),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 70,
                      width: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Standard Delivery',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'By 30 Dec - 3 Jan',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(width: 125),
                            Text('3.99', style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 90,
                      width: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunscreen',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '-',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text('1', style: TextStyle(fontSize: 20)),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '+',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 86),

                                    Text(
                                      '\$89.99',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Price Details', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Price(1 Item)', style: TextStyle(fontSize: 17)),
                        SizedBox(width: 170),
                        Text('89.99', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Shipping Fee', style: TextStyle(fontSize: 17)),
                        SizedBox(width: 180),
                        Text('3.99', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(height: 1, width: 310, color: Colors.black),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text('Total Payment:', style: TextStyle(fontSize: 17)),
                        SizedBox(width: 155),
                        Text('93.98', style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    SizedBox(height: 63),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      //height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purpleAccent,
                      ),
                      child: Center(
                        child: Text(
                          'Place Order',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
