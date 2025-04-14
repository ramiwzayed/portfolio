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
      child: Column(
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
          Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            children: _buildSkillChips(),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSkillChips() {
    // List of skills
    const skills = [
      'HTML',
      'CSS/SCSS',
      'JavaScript/TypeScript',
      'Java',
      'Python',
      'C++',
    ];

    // Use SkillChip widget
    return skills.map((skill) => SkillChip(skill: skill)).toList();
  }
}
