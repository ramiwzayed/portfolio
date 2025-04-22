import 'package:flutter/material.dart';
import 'package:portfolio/widgets/section_tittle.dart';
import 'education_row.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  bool isMobile(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth <= 600; // Mobile breakpoint
  }

  @override
  Widget build(BuildContext context) {
    // Use the isMobile() method here
    final int itemsPerRow = isMobile(context) ? 1 : 2;
    //print(itemsPerRow);
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
                child:
                    i + j < items.length
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Education'),
        SizedBox(height: 16.0),
        ...buildRows(educationItems, itemsPerRow),
      ],
    );
  }
}
