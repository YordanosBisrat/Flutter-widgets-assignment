import 'package:flutter/material.dart';

class ProfileCardLab extends StatelessWidget {
  const ProfileCardLab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(50),
                spreadRadius: 5,
                blurRadius: 15,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xFFF0E6FF),
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Alex Johnson',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.mail, color: Color(0xFF4A4E69))),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.phone, color: Color(0xFF4A4E69))),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Color(0xFF4A4E69))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
