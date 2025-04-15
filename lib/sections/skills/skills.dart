import 'package:flutter/material.dart';
import 'package:portfolio/sections/skills/skills_chip_widget.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // Centers overall content
        crossAxisAlignment: CrossAxisAlignment.center,
        // Vertically aligns items
        children: [
          // The image on the left
          Image.asset(
            'assets/person_small.png',
            height: 500,
            width: 500,
          ),
          const SizedBox(width: 24.0), // Space between the image and the texts
          // Text and skills section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              // Space from edge
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // Centers text content vertically
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Skills & Expertise',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Skill chips arranged vertically
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _buildSkillWidgets(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build skill chips vertically
  List<Widget> _buildSkillWidgets() {
    const skills = [
      'HTML',
      'CSS/SCSS',
      'JavaScript/TypeScript',
      'Java',
      'Python',
      'C++',
    ];

    return skills
        .map((skill) => Padding(
              padding:
                  const EdgeInsets.only(bottom: 8.0), // Space between skills
              child: SkillChip(skill: skill),
            ))
        .toList();
  }
}
