import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    const experiences = [
      'Game Development',
      'Hacking Mobile Devices',
      'Password & Email Crack',
      'IP Scanner',
      'Kali Linux',
      'WiFi Crack',
    ];
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Experience & Skills',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 16.0),
          Column(
            children: List.generate(3, (row) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildExperienceCard(
                      experiences[row * 2],
                      isDarkMode,
                    ),
                  ),
                  const SizedBox(width: 32.0),
                  Expanded(
                    child: _buildExperienceCard(
                      experiences[(row * 2) + 1],
                      // Get the next experience in the row
                      isDarkMode,
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceCard(String experience, bool isDarkMode) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isDarkMode ? Colors.grey[800] : Colors.grey[300],
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
