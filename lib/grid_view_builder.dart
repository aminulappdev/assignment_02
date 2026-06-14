import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  const GridViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Builder'),
        backgroundColor: Colors.purple,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,

        child: Column(
          children: [
            Text(
              'The GridView.builder widget is used to create a grid of items.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 600,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.amberAccent,
                    child: Center(child: Text('Hi $index')),
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
