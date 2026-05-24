import 'package:flutter/material.dart';

class ListtileScreen extends StatelessWidget {
  const ListtileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          'ListTile Widget',
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
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Jhon Doe',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Software Engineer',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Doe',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Software Engineer', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(width: 180),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),

            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://fastly.picsum.photos/id/1008/200/300.jpg?hmac=0fzZCUbJIQr1Tzv0NouxjNJyrnIZRJJe4dBcmHSo7OY',
                  ),
                ),
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            ),

            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://fastly.picsum.photos/id/1008/200/300.jpg?hmac=0fzZCUbJIQr1Tzv0NouxjNJyrnIZRJJe4dBcmHSo7OY',
              ),
              backgroundColor: Colors.purple,
            ),

            
          ],
        ),
      ),
    );
  }
}
