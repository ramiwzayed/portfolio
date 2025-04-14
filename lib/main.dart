import 'package:flutter/material.dart';
import 'package:portfolio/sections/contact/contact.dart';
import 'package:portfolio/sections/education/education.dart';
import 'package:portfolio/sections/experience/experience.dart';
import 'package:portfolio/sections/home/home.dart';
import 'package:portfolio/sections/skills/skills.dart';
import 'package:portfolio/sections/work/work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Define section keys
  final Map<String, GlobalKey> _sectionKeys = {
    'Home': GlobalKey(),
    'Work': GlobalKey(),
    'Experience': GlobalKey(),
    'Skills': GlobalKey(),
    'Contact': GlobalKey(),
    'Education': GlobalKey(),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: _buildNavBarActions(),
      ),
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: _buildSections(),
        ),
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

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
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
        ],
      ),
    );
  }

  List<Widget> _buildSections() {
    return [
      Container(
        key: _sectionKeys['Home'],
        child: HomeSection(),
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
        key: _sectionKeys['Skills'],
        child: SkillsSection(),
      ),
      Container(
        key: _sectionKeys['Experience'],
        child: ExperienceSection(),
      ),
      Container(
        key: _sectionKeys['Contact'],
        child: ContactSection(),
      ),
    ];
  }
}
