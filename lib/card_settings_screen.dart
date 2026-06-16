import 'package:assignment_02/custom_settings_list.dart';
import 'package:flutter/material.dart';

class CardSettingsScreen extends StatelessWidget {
  const CardSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
            bottom: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 211, 210, 210),
                    ),
                    child: Icon(Icons.keyboard_arrow_left),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 211, 210, 210),
                    ),
                    child: Icon(Icons.notifications_none),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 211, 210, 210),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 2.5,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Alyse Roe',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Other options',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(
                'There are many variations of passages of Lorem Ipsum available but suffered alteration.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              // Custom widgets banano hoyeche and seta custom_settings_list.dart file e ache and ekhan theke call kore use kortechi
              CustomSettingsList(name: 'Message', icon: Icons.message_outlined),
              SizedBox(height: 20),
              CustomSettingsList(name: 'My Grab', icon: Icons.handshake),
              SizedBox(height: 20),
              CustomSettingsList(name: 'My Share', icon: Icons.share),
              SizedBox(height: 20),
              CustomSettingsList(
                name: 'Terms of Service',
                icon: Icons.security,
              ),
              SizedBox(height: 20),
              CustomSettingsList(name: 'Delete Account', icon: Icons.delete),
              SizedBox(height: 20),
              CustomSettingsList(name: 'Logout', icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}
