import 'package:flutter/material.dart';

class C01 extends StatelessWidget {
  const C01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Nike Running Shoe',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 37,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black),
                              ),
                              //color: const Color.fromARGB(255, 83, 82, 82),
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              height: 37,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black),
                              ),
                              //color: const Color.fromARGB(255, 83, 82, 82),
                              child: Center(
                                child: Text(
                                  'Black/White',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Crossing hardwood comfort with off-court flair. 80s-inspired construction, bold details and nothing but net style.',
                          style: TextStyle(fontSize: 29),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('Price', style: TextStyle(fontSize: 20)),
                                Text(
                                  '69.99',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 100),
                             Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 97, 96, 96)
                              ),
                              //color: const Color.fromARGB(255, 83, 82, 82),
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(fontSize: 16,color: Colors.white),
                                ),
                              ),
                            ),
                            // Container(
                            //   height: 50,
                            //   width: 200,
                            //   color: const Color.fromARGB(255, 83, 82, 82),
                            //   child: Center(
                            //     child: Text(
                            //       'Add to Cart',
                            //       style: TextStyle(
                            //         fontSize: 20,
                            //         color: Colors.white,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
