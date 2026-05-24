import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> students = [
      // CSE (5)
      Student(name: 'John Doe', dept: 'CSE', studentId: '10001', cgpa: '3.5'),
      Student(
        name: 'Alice Brown',
        dept: 'CSE',
        studentId: '10002',
        cgpa: '3.7',
      ),
      Student(
        name: 'Michael Lee',
        dept: 'CSE',
        studentId: '10003',
        cgpa: '3.6',
      ),
      Student(
        name: 'David Wilson',
        dept: 'CSE',
        studentId: '10004',
        cgpa: '3.8',
      ),
      Student(
        name: 'Chris Evans',
        dept: 'CSE',
        studentId: '10005',
        cgpa: '3.9',
      ),

      // EEE (5)
      Student(
        name: 'Emma Watson',
        dept: 'EEE',
        studentId: '20001',
        cgpa: '3.4',
      ),
      Student(
        name: 'Daniel Craig',
        dept: 'EEE',
        studentId: '20002',
        cgpa: '3.5',
      ),
      Student(
        name: 'Sophia Turner',
        dept: 'EEE',
        studentId: '20003',
        cgpa: '3.6',
      ),
      Student(
        name: 'Henry Cavill',
        dept: 'EEE',
        studentId: '20004',
        cgpa: '3.7',
      ),
      Student(
        name: 'Olivia Wilde',
        dept: 'EEE',
        studentId: '20005',
        cgpa: '3.8',
      ),

      // Civil (5)
      Student(
        name: 'Robert Downey',
        dept: 'Civil',
        studentId: '30001',
        cgpa: '3.3',
      ),
      Student(
        name: 'Scarlett Johansson',
        dept: 'Civil',
        studentId: '30002',
        cgpa: '3.5',
      ),
      Student(
        name: 'Tom Holland',
        dept: 'Civil',
        studentId: '30003',
        cgpa: '3.6',
      ),
      Student(
        name: 'Zendaya Coleman',
        dept: 'Civil',
        studentId: '30004',
        cgpa: '3.7',
      ),
      Student(
        name: 'Mark Ruffalo',
        dept: 'Civil',
        studentId: '30005',
        cgpa: '3.4',
      ),
    ];

    List<String> studentList = students.map((student) => student.name).toList();
    List<String> cseStudents = students
        .where((stu) {
          return stu.dept == 'CSE';
        })
        .map((students) => students.name)
        .toList();

    void showCseStudents() {
      print(cseStudents);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
        actions: [
          IconButton(onPressed: showCseStudents, icon: const Icon(Icons.list)),
        ],
      ),

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: studentList
              .map(
                (student) =>
                    Text(student, style: const TextStyle(fontSize: 20)),
              )
              .toList(),
        ),
      ),
    );
  }
}

// student model class

class Student {
  final String name;
  final String dept;
  final String studentId;
  final String cgpa;

  Student({
    required this.name,
    required this.dept,
    required this.studentId,
    required this.cgpa,
  });
}
