import 'package:flutter/material.dart';

import 'EducationRow.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current theme brightness
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 12),
              Text(
                'Education',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Group Education Items in rows
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Flexible(
                    child: EducationItem(
                      degree: 'Information Technology and Communication',
                      institution: 'Al Quds Open University (2021 - 2025)',
                      iconColor: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 16.0), // Spacing between two items in a row
                  Flexible(
                    child: EducationItem(
                      degree: 'Information Technology and Communication',
                      institution: 'Al Quds Open University (2021 - 2025)',
                      iconColor: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0), // Space between rows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Flexible(
                    child: EducationItem(
                      degree: 'Information Technology and Communication',
                      institution: 'Al Quds Open University (2021 - 2025)',
                      iconColor: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 16.0), // Spacing between two items in a row
                  Flexible(
                    child: EducationItem(
                      degree: 'Information Technology and Communication',
                      institution: 'Al Quds Open University (2021 - 2025)',
                      iconColor: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
