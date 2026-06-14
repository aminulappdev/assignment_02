import 'package:flutter/material.dart';

class GridViewBuilderPractice extends StatelessWidget {
  const GridViewBuilderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,

        child: Column(
          children: [
            Text('Using Gride View Builder', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10
                ),
                itemCount: 20,
                itemBuilder: (context,index){
                  return Container(
                    color: Colors.deepOrange,
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
