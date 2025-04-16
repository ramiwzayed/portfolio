import 'package:flutter/material.dart';
import 'package:portfolio/sections/experience/ExperienceItems.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white : Colors.black,
              letterSpacing: 1.2,
              shadows: [
                Shadow(
                  color: isDarkMode ? Colors.white : Colors.black,
                  blurRadius: 8, // Lifted appearance for the title
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            'Here are some of the skills and tools I’ve worked with:',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
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
