import 'package:flutter/material.dart';
import 'package:portfolio/sections/contact/contact.dart';
import 'package:portfolio/sections/education/education.dart';
import 'package:portfolio/sections/experience/experience.dart';
import 'package:portfolio/sections/home/home.dart';
import 'package:portfolio/sections/work/work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(
        title: 'Flutter',
        isDarkMode: _isDarkMode,
        onThemeChange: (value) {
          setState(() {
            _isDarkMode = value;
          });
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.isDarkMode,
    required this.onThemeChange,
  });

  final String title;
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChange;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, GlobalKey> _sectionKeys = {
    'Work': GlobalKey(),
    'Education': GlobalKey(),
    'Experience': GlobalKey(),
    'Contact': GlobalKey(),
  };

  void _scrollToSection(String section) {
    final context = _sectionKeys[section]?.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = !isMobile() ? 150.0 : 16.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: !isMobile() ? _buildNavBarActions() : null,
      ),
      drawer: isMobile() ? _buildDrawer() : null,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(horizontalPadding, 0, horizontalPadding, 0),
          child: Column(
            children: _buildSections(),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Text(
              'Menu',
              style: TextStyle(
                color: widget.isDarkMode ? Colors.white : Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          ..._sectionKeys.keys.map(
            (section) => ListTile(
              title: Text(section),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(section);
              },
            ),
          ),
          const Divider(),
          SwitchListTile(
            title: Text(
              'Dark Mode',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16,
              ),
            ),
            secondary: Icon(
              widget.isDarkMode ? Icons.dark_mode : Icons.light_mode,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            value: widget.isDarkMode,
            onChanged: widget.onThemeChange,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildNavBarActions() {
    return _sectionKeys.keys
        .map(
          (section) => TextButton(
            onPressed: () => _scrollToSection(section),
            child: Text(section, style: const TextStyle(color: Colors.black)),
          ),
        )
        .toList();
  }

  List<Widget> _buildSections() {
    return [
      Container(
        key: _sectionKeys['Hero'],
        child: HeroSection(),
      ),
      Container(
        key: _sectionKeys['Work'],
        child: WorkSection(),
      ),
      Container(
        key: _sectionKeys['Education'],
        child: EducationSection(),
      ),
      Container(
        key: _sectionKeys['Experience'],
        child: ExperienceSection(),
      ),
      Container(
        key: _sectionKeys['Contact'],
        child: ContactSection(),
      )
    ];
  }

  bool isMobile() {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth <= 600;
  }
}
