import 'package:flutter/material.dart';

import 'EducationRow.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(80),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row with Image and Title
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 12), // Space between image and title
              const Text(
                'Education',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12), // Space between title section and content

          // Education Content
          const EducationItem(
            degree: 'Information Technology and Communication',
            institution: 'Al Quds Open University (2021 - 2025)',
            iconColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
