import 'package:flutter/material.dart';

// Custom Settings List Widget banano hoyeche
class CustomSettingsList extends StatelessWidget {
  final String name;
  final IconData icon;
  const CustomSettingsList({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 232, 231, 231),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 25),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
