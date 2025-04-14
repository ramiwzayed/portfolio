import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey workKey;
  final GlobalKey experienceKey;
  final GlobalKey skillKey;
  final GlobalKey contactKey;
  final GlobalKey educationKey;

  const DrawerMenu({
    super.key,
    required this.homeKey,
    required this.workKey,
    required this.experienceKey,
    required this.skillKey,
    required this.contactKey,
    required this.educationKey,
  });

  void _scrollToSection(BuildContext context, GlobalKey key) {
    final sectionContext = key.currentContext;
    if (sectionContext != null) {
      Navigator.pop(context);
      Scrollable.ensureVisible(
        sectionContext,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.deepPurple),
          child: const Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () => _scrollToSection(context, homeKey),
        ),
        ListTile(
          title: const Text('Work'),
          onTap: () => _scrollToSection(context, workKey),
        ),
        ListTile(
          title: const Text('Experiences'),
          onTap: () => _scrollToSection(context, experienceKey),
        ),
        ListTile(
          title: const Text('Skills'),
          onTap: () => _scrollToSection(context, skillKey),
        ),
        ListTile(
          title: const Text('Contact'),
          onTap: () => _scrollToSection(context, contactKey),
        ),
        ListTile(
          title: const Text('Education'),
          onTap: () => _scrollToSection(context, educationKey),
        ),
      ],
    );
  }
}
