import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      // Consistent padding
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Flutter Designer',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Rami \nZayed',
                  style: TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 52,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
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
      ),
    );
  }
}
