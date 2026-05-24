import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          'List view Widget',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The ListTile widget is commonly used in ListView to create lists of items.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            for (int i = 1; i <= 5; i++) ...{Text('Hello, this is item $i')},

            SizedBox(height: 20),

            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5, // Kotokkhon cholbe
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.purple),
                    title: Text('Item $i'),
                    subtitle: Text('Subtitle for item $i'),
                    trailing: Icon(Icons.arrow_forward),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
