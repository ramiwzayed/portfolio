import 'package:flutter/material.dart';

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final IconData icon;
  final Color iconColor;

  const EducationItem({
    required this.degree,
    required this.institution,
    this.icon = Icons.school, // Default icon for education
    this.iconColor = Colors.blueAccent, // Default color for the icon
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon, // Icon to represent education
          size: 30,
          color: iconColor.withRed(20), // Match with the section title
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                degree,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                institution,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
