import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Stack Practice'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(height: 200, width: 200, color: Colors.lightGreen),
            Container(height: 100, width: 100, color: Colors.teal),
            Positioned(
             top: -20,
             right: 0,
              child: Container(height: 50, width: 50, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
