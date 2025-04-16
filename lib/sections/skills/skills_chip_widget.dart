import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String skill;

  const SkillChip({
    required this.skill,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Chip(
      avatar: Icon(
        Icons.code,
        color: isDarkMode ? Colors.white : Colors.black,
        size: 16,
      ),
      label: Text(
        skill,
        style: TextStyle(
          color: isDarkMode ? Colors.white : Colors.black,
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
    );
  }
}
