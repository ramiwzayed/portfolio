import 'package:flutter/material.dart';

import 'package:portfolio/widgets/section_tittle.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        screenWidth >
                800 // Wide screens
            ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionTitle(title: 'Flutter Desinger'),

                      const SizedBox(height: 16.0),
                      const SectionTitle(title: 'Rami \nZayed'),
                      Text(
                        'I am Rami Zayed. Welcome to my Flutter Page!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/person.png',
                      width: 500,
                      height: 500,
                    ),
                  ),
                ),
              ],
            )
            : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/person.png',
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                  ),
                ),
                const SizedBox(height: 16.0),

                Text(
                  'Flutter Designer',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Rami \nZayed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: screenWidth > 400 ? 42 : 32,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  'I am Rami Zayed. Welcome to my Flutter Page!',
                  style: TextStyle(
                    fontSize: screenWidth > 400 ? 16 : 14,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.0),
              ],
            ),
      ],
    );
  }
}
