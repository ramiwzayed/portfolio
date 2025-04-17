import 'package:flutter/material.dart';

import 'ContactDetailsRow.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(height: 16),
                ContactDetailsRow(
                  icon: Icons.web_asset,
                  label: 'ramiwzayed',
                  iconColor: Colors.red.shade900,
                  textColor: Colors.black,
                ),
                const SizedBox(height: 16),
                ContactDetailsRow(
                  icon: Icons.hub_rounded,
                  label: 'ramiwzayed',
                  iconColor: Colors.black,
                  textColor: Colors.black87,
                ),
              ],
            )
          else
            Wrap(
              spacing: 16, // Horizontal spacing between items
              runSpacing: 16, // Vertical spacing between rows
              children: [
                SizedBox(
                  width: 250, // Ensure each item has enough space
                  child: ContactDetailsRow(
                    icon: Icons.location_on,
                    label: 'Ramallah, Palestine',
                    iconColor: Colors.orange.shade400,
                    textColor: Colors.black87,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ContactDetailsRow(
                    icon: Icons.email,
                    label: 'ramiwzayed@gmail.com',
                    iconColor: Colors.redAccent,
                    textColor: Colors.black87,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ContactDetailsRow(
                    icon: Icons.phone,
                    label: '+970-978-76633',
                    iconColor: Colors.green.shade600,
                    textColor: Colors.black87,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ContactDetailsRow(
                    icon: Icons.web_asset,
                    label: 'ramiwzayed',
                    iconColor: Colors.red.shade900,
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ContactDetailsRow(
                    icon: Icons.hub_rounded,
                    label: 'ramiwzayed',
                    iconColor: Colors.black,
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
                      onPressed: () {},
                    ),
                  ),
                );
              },
              icon: Icon(Icons.send),
              label: Text('Contact Us'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
