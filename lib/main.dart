import 'package:flutter/material.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/hero.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/sections/experience/experience.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/work.dart';

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
      home: const MyHomePage(title: 'Flutter Home Page'),
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
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _skillKey = GlobalKey();
  final GlobalKey _workKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
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
        // todo: new widget
        title: const Text('My App', style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          TextButton(
            onPressed: () => _scrollToSection(_homeKey),
            child: const Text('Home', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_heroKey),
            child: const Text('Hero', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_workKey),
            child: const Text('Work', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_experienceKey),
            child: const Text('Experiences',
                style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_skillKey),
            child: const Text('Skills', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_contactKey),
            child: const Text('Contact', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_educationKey),
            child:
                const Text('Education', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      drawer: Drawer(
        // todo: new widget
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
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
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_homeKey);
              },
            ),
            ListTile(
              title: const Text('Hero'),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_heroKey);
              },
            ),
            ListTile(
              title: const Text('Work'),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_workKey);
              },
            ),
            ListTile(
              title: const Text('Experiences'),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_experienceKey);
              },
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_skillKey);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_contactKey);
              },
            ),
            ListTile(
              title: const Text('Education'),
              onTap: () {
                Navigator.pop(context);
                _scrollToSection(_educationKey);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black12,
      // todo: organize

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: _heroKey,
              child: heroSection(),
            ),
            Container(
              key: _homeKey,
              child: homeSection(),
            ),
            Container(
              key: _workKey,
              child: workSection(),
            ),
            Container(
              key: _educationKey,
              child: educationSection(),
            ),
            Container(
              key: _skillKey,
              child: skillsSection(),
            ),
            Container(
              key: _experienceKey,
              child: experienceSection(),
            ),
            Container(
              key: _contactKey,
              child: ContactSection(),
            ),
          ],
        ),
      ),
    );
  }
}
