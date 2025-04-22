import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  final String experienceText;

  const ExperienceItem({
    required this.experienceText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(80),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.blueAccent.withAlpha(80),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(80),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueAccent.withAlpha(80),
            radius: 20.0,
            child: const Icon(
              Icons.star_rounded,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Text(
              experienceText,
              style: TextStyle(
                fontSize: 16.0,
                color: isDarkMode ? Colors.white : Colors.black,
                letterSpacing: 0.8,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
