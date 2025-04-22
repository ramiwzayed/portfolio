import 'package:flutter/material.dart';
import 'package:portfolio/sections/editing/tittle.dart';
import 'education_row.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final _ = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final int itemsPerRow = screenWidth > 600 ? 2 : 1;
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
        rows.add(const SizedBox(height: 24.0));
      }
      return rows;
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Education'),
          SizedBox(height: 16.0),
          ...buildRows(educationItems, itemsPerRow)
        ],
      ),
    );
  }
}

