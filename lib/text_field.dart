import 'package:flutter/material.dart';

class Textfieldpractice extends StatelessWidget {
  const Textfieldpractice({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController manController = TextEditingController();
    TextEditingController womanController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Text Widgets',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: manController,
                decoration: InputDecoration(
                  hintText: 'Man',
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: const Color.fromARGB(255, 82, 90, 228),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('🌹🌺', style: TextStyle(fontSize: 70)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: womanController,
                decoration: InputDecoration(
                  hintText: 'Woman',
                  prefixIcon: Icon(Icons.person_3),
                  prefixIconColor: const Color.fromARGB(255, 82, 90, 228),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(
                  '${manController.text} and ${womanController.text} are in love 👩‍❤️‍👨',
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
