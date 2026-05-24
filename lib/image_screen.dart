import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://fastly.picsum.photos/id/1008/200/300.jpg?hmac=0fzZCUbJIQr1Tzv0NouxjNJyrnIZRJJe4dBcmHSo7OY';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Image Screen'),
      ),

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [             
              Center(child: Text('jgjgjg')),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 00.0, right: 20.0, bottom: 60),
                child: Image.network(
                  imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),

              Image.asset(
                'assets/Images/football.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),

              SizedBox(height: 20),

              // Container(
              //   height: 200,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(imageUrl),
              //       fit: BoxFit.cover,
              //     ),
              //     border: Border.all(color: Colors.red, width: 10),
              //     color: Colors.blue,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              // ),
              // SizedBox(height: 20),

              // Container(
              //   height: 200,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/Images/football.jpg'),
              //       fit: BoxFit.cover,
              //     ),
              //     border: Border.all(color: Colors.red, width: 10),
              //     color: Colors.blue,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              // ),
              // SizedBox(height: 20),

              // Container(
              //   height: 200,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(imageUrl),
              //       fit: BoxFit.cover,
              //     ),
              //     color: Colors.blue,
              //     border: Border.all(color: Colors.blue, width: 5),
              //     shape: BoxShape.circle,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
