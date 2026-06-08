import 'package:flutter/material.dart';

class C03 extends StatelessWidget {
  const C03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 197, 196),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,

        child: Padding(
          padding:  EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 00),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26,
                    ),
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 20),
                  Text('Letters to You', style: TextStyle(fontSize: 19)),
                ],
              ),
              SizedBox(height: 27),
              Row(
                children: [
                  SizedBox(width: 50),
                  Text(
                    'Articles',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Podcasts',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 237, 131, 99),
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Videos',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  SizedBox(width: 133),
                  Container(
                    height: 2,
                    width: 65,
                    color: const Color.fromARGB(255, 237, 131, 99),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black26),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search),
                      
                      Container(
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black26,
                        ),
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              Text('Recommended For You', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 50,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Container(
                            //height: ,
                            width: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.green,
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text('The Science of self care'),
                          subtitle: Row(
                            children: [
                              Container(
                                height: 24,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black26),
                                ),
                                child: Center(
                                  child: Text(
                                    'Episod12',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: const Color.fromARGB(
                                        255,
                                        237,
                                        131,
                                        99,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                height: 24,
                                width: 43,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black26),
                                ),
                                child: Center(
                                  child: Text(
                                    '24 min',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: const Color.fromARGB(
                                        255,
                                        237,
                                        131,
                                        99,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 155, 87, 167),
                            ),
                            child: Icon(Icons.arrow_right_sharp),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
