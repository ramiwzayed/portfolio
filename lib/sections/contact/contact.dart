import 'package:flutter/material.dart';

import 'ContactDetailsRow.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Background gradient
            colors: [Colors.blue.shade100, Colors.blue.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            const SizedBox(height: 20),
            ContactDetailsRow(
              icon: Icons.location_on,
              label: 'Ramallah',
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
              label: '+97097876633',
              iconColor: Colors.green.shade600,
              textColor: Colors.black87,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Contact action triggered!')),
                  );
                },
                icon: const Icon(Icons.message, color: Colors.white),
                label: const Text('Get in Touch'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
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
