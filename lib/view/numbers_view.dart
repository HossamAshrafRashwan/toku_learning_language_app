import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/Component/item.dart';
import 'package:toku_learning_language_app/model/toku_app_model.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  final List<TokuModel> numbersList = const [
    TokuModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: "ICHI",
      enName: "One",
      audioPath: 'sounds/numbers/number_one_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'NI',
      enName: 'Two',
      audioPath: 'sounds/numbers/number_two_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'SAN',
      enName: 'Three',
      audioPath: 'sounds/numbers/number_three_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'SHI/YON',
      enName: 'Four',
      audioPath: 'sounds/numbers/number_four_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'GO',
      enName: 'Five',
      audioPath: 'sounds/numbers/number_five_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'ROKU',
      enName: 'Six',
      audioPath: 'sounds/numbers/number_six_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'SHICHI/NANA',
      enName: 'Seven',
      audioPath: 'sounds/numbers/number_seven_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'HACHI',
      enName: 'Eight',
      audioPath: 'sounds/numbers/number_eight_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'KYŬ',
      enName: 'Nine',
      audioPath: 'sounds/numbers/number_nine_sound.mp3',
    ),
    TokuModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'JŬ',
      enName: 'Ten',
      audioPath: 'sounds/numbers/number_ten_sound.mp3',
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
        itemCount: numbersList.length,
        itemBuilder: (context, index) => Item(
          item: numbersList[index],
          itemColor: const Color(0xffef9235),
        ),
      ),
    );
  }
}
