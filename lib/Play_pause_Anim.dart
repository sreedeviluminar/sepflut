import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: AnimatedIconExample(),
    ),
  );
}

class AnimatedIconExample extends StatefulWidget {
  @override
  _AnimatedIconExampleState createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;

  bool isAnimating = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, //vsync needs Ticker
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
//tap event calls the method, and start animating icon.
            changeIcon();
          },
          child: AnimatedIcon(
            size: 200, //size of the AnimatedIcon
            color: Colors.green, //color of the AnimatedIcon
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
          ),
        ),
      ),);
  }
  void changeIcon() {
//rebuilds UI with changing icon.
    setState(() {
      isAnimating = !isAnimating;
      isAnimating ? _animationController.forward() : _animationController.reverse();
    });
  }
  //disposes AnimationController.
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
