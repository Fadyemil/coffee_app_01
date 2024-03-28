// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({
    super.key,
    required this.Index,
    required this.pageController,
  });

  final int Index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/image/Rectangle 5.png',
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/image/Frame.png'),
            ),
            Container(
              child: IconButton(
                iconSize: 70,
                onPressed: () {
                  pageController.animateToPage(Index,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(
                  Icons.swipe_right_rounded,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
