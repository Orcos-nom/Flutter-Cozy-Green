import 'package:flutter/material.dart';

class ThreeDots extends StatefulWidget {
  const ThreeDots({super.key});

  @override
  ThreeDotsState createState() => ThreeDotsState();
}

class ThreeDotsState extends State<ThreeDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<int> _dotAnimation;
  final int _dotCount = 3;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat();

    _dotAnimation = StepTween(begin: 0, end: _dotCount - 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _dotAnimation,
      builder: (context, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_dotCount, (index) {
            return AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: index == _dotAnimation.value ? 1.0 : 0.2,
              child: const Text(
                '.',
                textScaleFactor: 3.5,
                style: TextStyle(color: Colors.green),
              ),
            );
          }),
        );
      },
    );
  }
}
