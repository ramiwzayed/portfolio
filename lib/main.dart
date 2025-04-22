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
          seedColor:
              Theme.of(context).brightness == Brightness.dark
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
  bool _isEnglish = true;

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
        backgroundColor: widget.isDarkMode ? Colors.white : Colors.black45,
        titleTextStyle: TextStyle(
          color: !widget.isDarkMode ? Colors.black : Colors.white,
        ),
        toolbarTextStyle: TextStyle(
          color: widget.isDarkMode ? Colors.black : Colors.white,
        ),
        actions: [
          if (!isMobile()) ..._buildNavBarActions(),
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              setState(() {
                _isEnglish = !_isEnglish;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                _isEnglish ? 'EN' : 'AR',
                style: TextStyle(
                  color: widget.isDarkMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: isMobile() ? _buildDrawer() : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            horizontalPadding,
            0,
            horizontalPadding,
            0,
          ),
          child: Column(children: _buildSections()),
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
              _isEnglish ? 'Menu' : 'اقتراحات', // Change text based on language
              style: TextStyle(
                color: widget.isDarkMode ? Colors.white : Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          ..._sectionKeys.keys.map(
            (section) => ListTile(
              title: Text(_isEnglish ? section : _translateSection(section)),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(section);
              },
            ),
          ),
          const Divider(),
          SwitchListTile(
            title: Text(
              _isEnglish ? 'Dark Mode' : 'وضعية الليلة',
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
            child: Text(
              _isEnglish ? section : _translateSection(section),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        )
        .toList();
  }

  String _translateSection(String section) {
    final translations = {
      'Work': 'عمل',
      'Education': 'درجة التعليمية',
      'Experience': 'مهارات',
      'Contact': 'الاتصال بنا',
      'Hero': 'البطل',
    };
    return translations[section] ?? section; // Use translation or fallback
  }

  List<Widget> _buildSections() {
    return [
      Container(key: _sectionKeys['Hero'], child: HeroSection()),
      Container(key: _sectionKeys['Work'], child: WorkSection()),
      Container(key: _sectionKeys['Education'], child: EducationSection()),
      Container(key: _sectionKeys['Experience'], child: ExperienceSection()),
      Container(key: _sectionKeys['Contact'], child: ContactSection()),
    ];
  }

  bool isMobile() {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth <= 600;
  }
}
