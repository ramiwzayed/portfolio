import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String skill;

  const SkillChip({
    required this.skill,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(
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
    );
  }
}
