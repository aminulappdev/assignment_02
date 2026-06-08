import 'package:flutter/material.dart';

class ExpandWidget extends StatelessWidget {
  const ExpandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          'Expand Widget',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            
            
            // ElevatedButton(onPressed: () {}, child: Text('Expand Widget')),
            // SizedBox(height: 20),
            // Container(height: 200, width: 200, color: Colors.purple),
            // SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Container(width: 200, color: Colors.orange)),
            Expanded(child: Container(width: 200, color: Colors.pinkAccent)),
           
            Expanded(child: Container(width: 200, color: Colors.deepPurple)),
          ],
        ),
      ),
    );
  }
}
