import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController manController = TextEditingController();
    TextEditingController womanController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          'Text Widget',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 10),
            Text('❤️❤️', style: TextStyle(fontSize: 30)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: womanController,
                decoration: InputDecoration(
                  hintText: 'Woman',
                  prefixIcon: Icon(Icons.person_3),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                int man = int.parse(manController.text);
                int woman = int.parse(womanController.text);
                int add = man + woman;

                // print(
                //   '${manController.text} and ${womanController.text} are in love 👩‍❤️‍👨',
                // );
                print(add);
                manController.clear();
                womanController.clear();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
