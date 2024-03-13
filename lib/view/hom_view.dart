import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/Component/My_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyContainer(
          containerColor: Color(0xffef9235),
          containerTitle: 'Numbers',
        ),
        MyContainer(
          containerColor: Color(0xff5d8b3e),
          containerTitle: 'Family Member',
        ),
        MyContainer(
          containerColor: Color(0xff854cae),
          containerTitle: 'Colors',
        ),
        MyContainer(
          containerColor: Color(0xff52afd6),
          containerTitle: 'phrases',
        ),
      ],
    );
  }
}
