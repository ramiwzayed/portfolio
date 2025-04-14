import 'package:flutter/material.dart';

import 'ContactDetailsRow.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(80),
              blurRadius: 12,
              spreadRadius: 4,
              offset: Offset(0, 8), // Subtle shadow for elevation
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Section Title
            Text(
              'Get in Touch',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade900,
              ),
            ),
            const SizedBox(height: 12),
            const SizedBox(height: 24),

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
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Thank you for getting in touch!',
                        style: TextStyle(fontSize: 16),
                      ),
                      backgroundColor: Colors.blue.shade600,
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
