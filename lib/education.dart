import 'package:flutter/material.dart';

// todo: Rename fn+shift+f6
class educationSection extends StatelessWidget {
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
            offset: Offset(0, 6),
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

          // todo: new widget
          // Education item
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.school, // Icon to represent education
                size: 30,
                color: Colors.blueAccent.shade200, // Match with title
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Information Technology and Communication',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Al Quds Open University (2021 - 2025)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
