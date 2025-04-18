import 'package:flutter/material.dart';

import 'EducationRow.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current theme brightness
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Define the number of items per row based on screen width
    final int itemsPerRow = screenWidth > 600 ? 2 : 1;

    // Sample data for the education items
    final educationItems = [
      const EducationItem(
        degree: 'Information Technology and Communication',
        institution: 'Al Quds Open University (2021 - 2025)',
        iconColor: Colors.blueAccent,
      ),
      const EducationItem(
        degree: 'Information Technology and Communication',
        institution: 'Al Quds Open University (2021 - 2025)',
        iconColor: Colors.blueAccent,
      ),
      const EducationItem(
        degree: 'Information Technology and Communication',
        institution: 'Al Quds Open University (2021 - 2025)',
        iconColor: Colors.blueAccent,
      ),
      const EducationItem(
        degree: 'Information Technology and Communication',
        institution: 'Al Quds Open University (2021 - 2025)',
        iconColor: Colors.blueAccent,
      ),
    ];

    // Build rows dynamically
    List<Widget> buildRows(List<EducationItem> items, int itemsPerRow) {
      List<Widget> rows = [];
      for (int i = 0; i < items.length; i += itemsPerRow) {
        rows.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              itemsPerRow,
              (j) => Flexible(
                child: i + j < items.length
                    ? items[i + j]
                    : const SizedBox.shrink(),
              ),
            ),
          ),
        );
        rows.add(const SizedBox(height: 24.0)); // Space between rows
      }
      return rows;
    }

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
            children: buildRows(educationItems, itemsPerRow),
          ),
        ],
      ),
    );
  }
}
