import 'package:flutter/material.dart';

class heroSection extends StatefulWidget {
  @override
  _HeroSectionState createState() => _HeroSectionState();
}

class _HeroSectionState extends State<heroSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    // todo: Remove the animation
    // todo: Clean the code
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Animation duration
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Start animation when initialized
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose the controller to free resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fadeAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _fadeAnimation.value,
          child: HeroContent(), // Separate content into a widget
        );
      },
    );
  }
}

class HeroContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      alignment: Alignment.topLeft,
      color: Colors.deepPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://images.pexels.com/photos/3651752/pexels-photo-3651752.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 200),
          const SizedBox(height: 20),
          ElevatedButton(
            child: Text('Click Me'),
            onPressed: () {
              print('Welcome Rami');
            },
          ),
          Text(
            'Hero Section\n',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            'I’m enthusiastic and responsible. I pay attention to details, and I’m adaptable to all challenging situations. Moreover, I am willing to learn new skills to expand my knowledge and experience.',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
