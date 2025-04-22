import 'package:flutter/material.dart';

import '../editing/tittle.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SectionTitle(title: 'My Work Experience'),

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

    );
  }
}
