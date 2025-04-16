import 'package:flutter/material.dart';

import 'ContactDetailsRow.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              'Get in Touch\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade900,
              ),
            ),
            const SizedBox(height: 24),

            // Contact Information in a Single Line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContactDetailsRow(
                  icon: Icons.location_on,
                  label: 'Ramallah, Palestine',
                  iconColor: Colors.orange.shade400,
                  textColor: Colors.black87,
                ),
                ContactDetailsRow(
                  icon: Icons.email,
                  label: 'ramiwzayed@gmail.com',
                  iconColor: Colors.redAccent,
                  textColor: Colors.black87,
                ),
                ContactDetailsRow(
                  icon: Icons.phone,
                  label: '+970-978-76633',
                  iconColor: Colors.green.shade600,
                  textColor: Colors.black87,
                ),
              ],
            ),
            const SizedBox(height: 36),

            // Contact Me Button
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
                      action: SnackBarAction(
                        label: 'Close',
                        textColor: isDarkMode ? Colors.white : Colors.black,
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: Icon(Icons.message, color: Colors.white),
                label: Text(
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
          ],
        ),
      ),
    );
  }
}
