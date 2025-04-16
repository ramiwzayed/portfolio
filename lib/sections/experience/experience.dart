import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    const experiences = [
      'Ethical Hacking',
      'Hacking Mobile Devices',
      'Password & Email Crack',
      'IP Scanner',
      'Kali Linux',
      'WiFi Crack',
      'Game Development',
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience & Skills',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.grey[300] : Colors.grey[800],
            ),
          ),
          const SizedBox(height: 16.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: experiences.map((experience) {
              return _buildExperienceCard(experience, isDarkMode);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceCard(String experience, bool isDarkMode) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150.0,
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: isDarkMode ? Colors.grey[800] : Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: isDarkMode ? Colors.black54 : Colors.grey[400]!,
              blurRadius: 4.0,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            experience,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
