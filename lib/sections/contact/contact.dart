import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/widgets/editing/section_tittle.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 600 ? 3 : (screenWidth > 400 ? 2 : 1);
    final List<Map<String, dynamic>> contactDetails = [
      {
        'icon': FontAwesomeIcons.mapLocationDot,
        'label': 'Ramallah, Palestine',
        'iconColor': Colors.orange.shade400,
      },
      {
        'icon': FontAwesomeIcons.envelope,
        'label': 'ramiwzayed@gmail.com',
        'iconColor': Colors.lightBlueAccent,
      },
      {
        'icon': FontAwesomeIcons.phoneVolume,
        'label': '+970-5978-76633',
        'iconColor': Colors.green,
      },
      {
        'icon': FontAwesomeIcons.instagram,
        'label': 'ramiwzayed',
        'iconColor': Colors.red.shade900,
        'onTap': () => _launchUrl('https://www.instagram.com/ramiwzayed/'),
      },
      {
        'icon': FontAwesomeIcons.github,
        'label': 'ramiwzayed',
        'iconColor': isDarkMode ? Colors.white : Colors.black,
        'onTap': () => _launchUrl('https://github.com/ramiwzayed'),
      },
      {
        'icon': FontAwesomeIcons.facebook,
        'label': 'RamiwZayed',
        'iconColor': Colors.blue,
        'onTap': () => _launchUrl('https://www.facebook.com'),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SectionTitle(title: 'Get in Touch'),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: contactDetails.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 12.0,
            childAspectRatio:
                screenWidth > 600 ? 4 : (screenWidth > 400 ? 3 : 2.5),
          ),
          itemBuilder: (context, index) {
            final detail = contactDetails[index];
            return Row(
              children: [
                Icon(
                  detail['icon'],
                  color: detail['iconColor'],
                  size: screenWidth > 600 ? 20.0 : 15.0,
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    detail['label'],
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 24 : 18,
                      color: isDarkMode ? Colors.white70 : Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  static void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
