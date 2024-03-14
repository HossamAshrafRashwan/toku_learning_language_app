import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/Component/item.dart';
import 'package:toku_learning_language_app/model/toku_app_model.dart';

class ColorView extends StatelessWidget {
  const ColorView({super.key});

  final List<TokuModel> numbers = const [
    TokuModel(
      image: 'assets/images/colors/color_black.png',
      jpName: "Burakku",
      enName: "black",
      audioPath: 'sounds/colors/black.wav',
    ),
    TokuModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
      audioPath: 'sounds/colors/brown.wav',
    ),
    TokuModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      audioPath: 'sounds/colors/dusty yellow.wav',
    ),
    TokuModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
      audioPath: 'sounds/colors/gray.wav',
    ),
    TokuModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
      audioPath: 'sounds/colors/green.wav',
    ),
    TokuModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'red',
      audioPath: 'sounds/colors/red.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffde4),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
        centerTitle: true,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => Item(
          number: numbers[index],
          itemColor: const Color(0xff854cae),
        ),
      ),
    );
  }
}
