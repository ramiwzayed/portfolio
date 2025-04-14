import 'package:flutter/material.dart';

import 'EducationRow.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the card
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Light shadow for the card
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          const Text(
            'Education',
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'Roboto', // Use a custom font for better design
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent, // Accent color for the title
            ),
          ),
          const SizedBox(height: 12),

          // Use the new widget for education items
          const EducationItem(
            degree: 'Information Technology and Communication',
            institution: 'Al Quds Open University (2021 - 2025)',
            iconColor: Colors.blueAccent, // Custom icon color
          ),
        ],
      ),
    );
  }
}
