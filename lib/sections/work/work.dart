import 'package:flutter/material.dart';

class WorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Full background black
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            'My Work Experience',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // White text for contrast
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'The experience has significantly '
            'contributed to both my personal and professional growth. Being part of a company '
            'that values innovation, efficiency, and teamwork has provided me with valuable insights '
            'into how successful organizations operate.',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.white, // White text for readability
            ),
          ),
        ],
      ),
    );
  }
}
