import 'package:flutter/material.dart';

class skillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
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

    // todo: new widget
    return skills
        .map(
          (skill) => Chip(
            avatar: Icon(
              Icons.code,
              color: Colors.white,
              size: 16,
            ),
            label: Text(
              skill,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 4,
            shadowColor: Colors.black45,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        )
        .toList();
  }
}
