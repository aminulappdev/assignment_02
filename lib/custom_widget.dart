import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Custom Widget'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20),
            MyCustomButton(title: 'Custom Button', color: Colors.purple),
            SizedBox(height: 20),
            MyCustomButton(title: 'Custom Button 2', color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  final String title;
  final Color color;

  MyCustomButton({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Hello Flutter');
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(child: Text(title, style: TextStyle(fontSize: 24))),
      ),
    );
  }
}
