import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Text(
        title.toUpperCase(),
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Orbitron',
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}