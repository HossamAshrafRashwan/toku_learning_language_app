import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/view/hom_view.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfffffde4),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Toku",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const HomeView(),
      ),
    );
  }
}
