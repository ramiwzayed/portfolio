import 'package:flutter/material.dart';

class experienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
        children: [
          Text(
            'Experience',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Ethical Hacking\n'
            'Hacking Mobile Devices\n'
            'Password & Email Crack\n'
            'IP Scanner\n'
            'Kali-Linux\n'
            'WiFi Crack\n'
            'Game Development\n',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
