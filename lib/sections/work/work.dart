import 'package:flutter/material.dart';

class WorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detect if dark mode is enabled
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 255.0),
      // Add space on left and right
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'My Work Experience',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isDarkMode
                    ? Colors.white
                    : Colors.black, // Adjusted dynamically
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'The experience has significantly '
              'contributed to both my personal and professional growth. Being part of a company '
              'that values innovation, efficiency, and teamwork has provided me with valuable insights '
              'into how successful organizations operate.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: isDarkMode
                    ? Colors.white
                    : Colors.black, // Adjusted dynamically
              ),
            ),
          ],
        ),
      ),
    );
  }
}
