import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, Colors.grey[900]!], // Subtle black gradient
        ),
        borderRadius: BorderRadius.circular(15.0), // Rounded corners
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello, I\'m Rami Zayed',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'I am Rami Zayed Welcome to my Flutter Pager',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    print('Welcome');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Button color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 12.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
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
                // fit: BoxFit.values.first,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
