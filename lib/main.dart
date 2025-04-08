import 'package:flutter/material.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Portfolio Header'),
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
            onPressed: () => _scrollToSection(_skillKey), // Corrected Key Name
            child: const Text('Skills', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_workKey),
            child: const Text('Work', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_experienceKey), // Corrected Key Name
            child: const Text('Experiences',
                style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_contactKey),
            child: const Text('Contact', style: TextStyle(color: Colors.black)),
          ),
        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contact Information', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.red),
            ),
            const SizedBox(height: 16),
            const Text(
              'Name: Rami Zayed',
              style: TextStyle(fontSize: 18),
            ),
            const Text(''
                'Email: ramiwzayed@gmail.com',
                style: TextStyle(fontSize: 18, color: Colors.blue)),
            const Text(
              'Phone: +970597876633',
              style: TextStyle(fontSize: 18, color: Colors.pink),
            ),
          ],
        ),
      ),

    );
  }


}
