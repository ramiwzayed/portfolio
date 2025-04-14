import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  final String experienceText;

  const ExperienceItem({
    required this.experienceText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(80), // Translucent background
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.blueAccent.withAlpha(80), // Subtle border effect
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(80),
            blurRadius: 12, // Smooth shadow
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueAccent.withAlpha(80),
            radius: 20.0, // Circle icon size
            child: const Icon(
              Icons.star_rounded,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          const SizedBox(width: 12.0), // Space between icon and text
          Expanded(
            child: Text(
              experienceText,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                letterSpacing: 0.8,
                height: 1.5, // Smooth line height
              ),
            ),
          ),
        ],
      ),
    );
  }
}
