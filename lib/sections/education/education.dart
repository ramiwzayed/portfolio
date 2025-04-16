import 'package:flutter/material.dart';

import 'EducationRow.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current theme brightness
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row with Image and Title
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 12), // Space between image and title
              Text(
                'Education',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: isDarkMode
                      ? Colors.white
                      : Colors.black, // Dynamic text color
                ),
              ),
            ],
          ),
          const SizedBox(height: 12), // Space between title section and content

          // Education Content
          EducationItem(
            degree: 'Information Technology and Communication',
            institution: 'Al Quds Open University (2021 - 2025)',
            iconColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
