import 'package:flutter/material.dart';

class Practice01 extends StatelessWidget {
  const Practice01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [Icon(Icons.search, color: Colors.white)],
        title: Text(
          'Practice App bar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text(
                'Hello, Flutter!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.favorite, color: Colors.red, size: 48),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 100,
                width: 200,
                child: Center(child: Text('Flutter Container')),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                child: Text('Click Me'),
              ),
              SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  print('Text Button Pressed!');
                },
                child: Text('Text Button'),
              ),
              SizedBox(height: 20),

              IconButton(
                onPressed: () {
                  print('Icon Button Pressed!');
                },
                icon: Icon(Icons.thumb_up, color: Colors.green),
              ),

              SizedBox(height: 20),

              OutlinedButton(
                onPressed: () {
                  print('Outlined Button Pressed!');
                },
                child: Text('Outlined Button'),
              ),

              SizedBox(height: 20),

              InkWell(
                onTap: () {
                  print('Custom Button Pressed!');
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'My Button',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
