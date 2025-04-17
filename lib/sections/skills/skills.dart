// import 'package:flutter/material.dart';
// import 'package:portfolio/sections/skills/skills_chip_widget.dart';
//
// class SkillsSection extends StatelessWidget {
//   const SkillsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
//
//     return _buildTextContent(isDarkMode);
//   }
//
//   Widget _buildTextContent(bool isDarkMode) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Skills & Expertise',
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: isDarkMode ? Colors.white : Colors.black,
//             ),
//           ),
//           const SizedBox(height: 16.0),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: _buildSkillWidgets(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   List<Widget> _buildSkillWidgets() {
//     const skills = [
//       'HTML',
//       'CSS/SCSS',
//       'JavaScript/TypeScript',
//       'Java',
//       'Python',
//       'C++',
//     ];
//
//     return skills
//         .map((skill) => Padding(
//               padding:
//                   const EdgeInsets.only(bottom: 8.0), // Space between skills
//               child: SkillChip(skill: skill),
//             ))
//         .toList();
//   }
// }
