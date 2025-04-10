import 'package:flutter/material.dart';

class experienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      // Smooth neon/cool gradient
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF8E2DE2), // Purple shade
            Color(0xFF4A00E0), // Darker tone of blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            offset: Offset(0, 8), // Smooth elevated shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experience',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2,
              shadows: [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 8, // Lifted appearance for the title
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          const Text(
            'Here are some of the skills and tools I’ve worked with:',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 24.0),
          ..._buildExperienceList(context), // Improved experience items
        ],
      ),
    );
  }

  List<Widget> _buildExperienceList(BuildContext context) {
    const experiences = [
      'Ethical Hacking',
      'Hacking Mobile Devices',
      'Password & Email Crack',
      'IP Scanner',
      'Kali Linux',
      'WiFi Crack',
      'Game Development',
    ];

    return List.generate(
      experiences.length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: GestureDetector(
          onTap: () {
            // Optional: Add action for item click
          },
          // todo: Remove the animation
          // todo: new widget
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
            decoration: BoxDecoration(
              // todo: Remove the deprecated functions
              color: Colors.white.withOpacity(0.1),
              // Translucent for smooth styling
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.blueAccent.withOpacity(0.3),
                // Subtle border effect
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueAccent.withOpacity(0.8),
                  radius: 20.0,
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Text(
                    experiences[index],
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      letterSpacing: 0.8,
                      height: 1.5, // Smooth line height for clean spacing
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
