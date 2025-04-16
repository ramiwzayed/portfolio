import 'package:flutter/material.dart';

import 'ContactDetailsRow.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    final isSmallScreen = screenWidth < 600;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get in Touch',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade900,
            ),
          ),
          const SizedBox(height: 24),
          if (isSmallScreen)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactDetailsRow(
                  icon: Icons.location_on,
                  label: 'Ramallah, Palestine',
                  iconColor: Colors.orange.shade400,
                  textColor: Colors.black87,
                ),
                const SizedBox(height: 16),
                ContactDetailsRow(
                  icon: Icons.email,
                  label: 'ramiwzayed@gmail.com',
                  iconColor: Colors.redAccent,
                  textColor: Colors.black87,
                ),
                const SizedBox(height: 16),
                ContactDetailsRow(
                  icon: Icons.phone,
                  label: '+970-978-76633',
                  iconColor: Colors.green.shade600,
                  textColor: Colors.black87,
                ),
              ],
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ContactDetailsRow(
                    icon: Icons.location_on,
                    label: 'Ramallah, Palestine',
                    iconColor: Colors.orange.shade400,
                    textColor: Colors.black87,
                  ),
                ),
                Expanded(
                  child: ContactDetailsRow(
                    icon: Icons.email,
                    label: 'ramiwzayed@gmail.com',
                    iconColor: Colors.redAccent,
                    textColor: Colors.black87,
                  ),
                ),
                Expanded(
                  child: ContactDetailsRow(
                    icon: Icons.phone,
                    label: '+970-978-76633',
                    iconColor: Colors.green.shade600,
                    textColor: Colors.black87,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 36),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Thank you for getting in touch!',
                      style: TextStyle(fontSize: 16),
                    ),
                    backgroundColor: Colors.grey,
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Close',
                      textColor: isDarkMode ? Colors.white : Colors.black,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.message, color: Colors.white),
              label: const Text(
                'Contact Me',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade700,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 36),
          Center(
            child: Text(
              '© 2025 Rami Zayed. All Rights Reserved.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
