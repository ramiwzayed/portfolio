import 'package:flutter/material.dart';
import 'package:portfolio/sections/experience/ExperienceItems.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      decoration: BoxDecoration(
        // Gradient background for the section
        gradient: const LinearGradient(
          colors: [
            Color(0xFF8E2DE2), // Purple shade
            Color(0xFF4A00E0), // Darker tone of blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.transparent.withBlue(5),
            blurRadius: 20, // Smooth elevated shadow
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experience',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2,
              shadows: [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 8, // Lifted appearance for the title
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          const Text(
            'Here are some of the skills and tools I’ve worked with:',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 24.0),
          ..._buildExperienceList(context),
        ],
      ),
    );
  }

  List<Widget> _buildExperienceList(BuildContext context) {
    const experiences = [
      'Ethical Hacking',
      'Hacking Mobile Devices',
      'Password & Email Crack',
      'IP Scanner',
      'Kali Linux',
      'WiFi Crack',
      'Game Development',
    ];

    return List.generate(
      experiences.length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: GestureDetector(
          onTap: () {
            // Optional: Add action for item click
          },
          child: ExperienceItem(
            experienceText: experiences[index], // Use the reusable widget
          ),
        ),
      ),
    );
  }
}
