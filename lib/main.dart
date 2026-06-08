//import 'package:assignment_02/ListView_builder.dart';
import 'package:assignment_02/c_01.dart';
import 'package:flutter/material.dart';
import 'c_02.dart';
import 'ListView_builder.dart';
import 'c_03.dart';
//import 'c_01.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: C03());
  }
}
