import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HivePracticeScreen extends StatefulWidget {
  const HivePracticeScreen({super.key});

  @override
  State<HivePracticeScreen> createState() => _HivePracticeScreenState();
}

class _HivePracticeScreenState extends State<HivePracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Hive Practice'),
      ),

      body: Column(children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          print('OnPressed');
          final hiveBox =
              Hive.isBoxOpen('todo') ? Hive.box('todo') : await Hive.openBox('todo');
          Map<String, dynamic> studentInfo = {
            'name': 'Aminul Islam',
            'age': 20,
            'address': 'Dhaka',
          };

          hiveBox.put('name', 'Aminul Islam');
          hiveBox.put('info', studentInfo);

          print(hiveBox.get('name'));
          print(hiveBox.get('info'));
        },
      ),
    );
  }
}
