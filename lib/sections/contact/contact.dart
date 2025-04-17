import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ContactDetailsRow.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
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
              color: isDarkMode ? Colors.white : Colors.black,
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
                GestureDetector(
                  onTap: () async {
                    const instagramUrl =
                        'https://www.instagram.com/ramiwzayed/';
                    if (await canLaunchUrl(Uri.parse(instagramUrl))) {
                      await launchUrl(Uri.parse(instagramUrl),
                          mode: LaunchMode.externalApplication);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Could not launch Instagram"),
                        ),
                      );
                    }
                  },
                  child: ContactDetailsRow(
                    icon: FontAwesomeIcons.instagram,
                    label: 'ramiwzayed',
                    iconColor: Colors.purple.shade400,
                    textColor: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () async {
                    const githubUrl = 'https://github.com/ramiwzayed';
                    if (await canLaunchUrl(Uri.parse(githubUrl))) {
                      await launchUrl(Uri.parse(githubUrl),
                          mode: LaunchMode.externalApplication);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Could not launch GitHub"),
                        ),
                      );
                    }
                  },
                  child: ContactDetailsRow(
                    icon: FontAwesomeIcons.github,
                    label: 'ramiwzayed',
                    iconColor: isDarkMode ? Colors.white : Colors.black,
                    textColor: Colors.black87,
                  ),
                ),
              ],
            )
          else
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                SizedBox(
                  width: 250,
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
                    iconColor: Colors.lightBlueAccent,
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
                  child: GestureDetector(
                    onTap: () async {
                      const instagramUrl =
                          'https://www.instagram.com/ramiwzayed/';
                      if (await canLaunchUrl(Uri.parse(instagramUrl))) {
                        await launchUrl(Uri.parse(instagramUrl),
                            mode: LaunchMode.externalApplication);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Could not launch Instagram"),
                          ),
                        );
                      }
                    },
                    child: ContactDetailsRow(
                      icon: FontAwesomeIcons.instagram,
                      label: 'ramiwzayed',
                      iconColor: Colors.red.withAlpha(255),
                      textColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: GestureDetector(
                    onTap: () async {
                      const githubUrl = 'https://github.com/ramiwzayed';
                      if (await canLaunchUrl(Uri.parse(githubUrl))) {
                        await launchUrl(Uri.parse(githubUrl),
                            mode: LaunchMode.externalApplication);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Could not launch GitHub"),
                          ),
                        );
                      }
                    },
                    child: ContactDetailsRow(
                      icon: FontAwesomeIcons.github,
                      label: 'ramiwzayed',
                      iconColor: isDarkMode ? Colors.white : Colors.black,
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
