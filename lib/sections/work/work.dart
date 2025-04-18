import 'package:flutter/material.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 600
            ? 16.0
            : 32.0, // Adjust padding based on screen width
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'My Work Experience',
              style: TextStyle(
                fontSize: screenWidth < 600 ? 24 : 32, // Adjust font size
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'The experience has significantly '
              'contributed to both my personal and professional growth. Being part of a company '
              'that values innovation, efficiency, and teamwork has provided me with valuable insights '
              'into how successful organizations operate.',
              style: TextStyle(
                fontSize: screenWidth < 600 ? 14 : 16, // Adjust font size
                height: 1.5,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
