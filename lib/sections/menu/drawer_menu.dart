import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  final GlobalKey homeKey;
  final GlobalKey workKey;
  final GlobalKey experienceKey;
  final GlobalKey contactKey;
  final GlobalKey educationKey;

  const DrawerMenu({
    super.key,
    required this.homeKey,
    required this.workKey,
    required this.experienceKey,
    required this.contactKey,
    required this.educationKey,
  });

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
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
          decoration: BoxDecoration(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
          ),
          child: const Text(
            'Menu',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () => _scrollToSection(context, widget.homeKey),
        ),
        ListTile(
          title: const Text('Work'),
          onTap: () => _scrollToSection(context, widget.workKey),
        ),
        ListTile(
          title: const Text('Experiences'),
          onTap: () => _scrollToSection(context, widget.experienceKey),
        ),
        ListTile(
          title: const Text('Contact'),
          onTap: () => _scrollToSection(context, widget.contactKey),
        ),
        ListTile(
          title: const Text('Education'),
          onTap: () => _scrollToSection(context, widget.educationKey),
        ),
      ],
    );
  }
}
