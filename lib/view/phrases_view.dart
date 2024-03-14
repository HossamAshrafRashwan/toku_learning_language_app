import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/Component/phrases_item.dart';
import 'package:toku_learning_language_app/model/phrases_model.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  final List<PhrasesModel> phrase = const [
    PhrasesModel(
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
      audioPath: 'sounds/phrases/are_you_coming.wav',
    ),
    PhrasesModel(
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: "Don't forget to subscribe",
      audioPath: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhrasesModel(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling',
      audioPath: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhrasesModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      audioPath: 'sounds/phrases/i_love_anime.wav',
    ),
    PhrasesModel(
      jpName: 'Watashi wa Puroguramingu ga daisukidesu',
      enName: 'I love programming',
      audioPath: 'sounds/phrases/i_love_programming.wav',
    ),
    PhrasesModel(
      jpName: 'Onamae wa nan desu ka?',
      enName: 'What is your name',
      audioPath: 'sounds/phrases/what_is_your_name.wav',
    ),
    PhrasesModel(
      jpName: 'Doko ni iku no',
      enName: 'Where are you going',
      audioPath: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhrasesModel(
      jpName: 'Hai, onegai shimasu',
      enName: "Yes I'm coming",
      audioPath: 'sounds/phrases/yes_im_coming.wav',
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
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, index) => PhraseItem(
          phrase: phrase[index],
          itemColor: const Color(0xff52afd6),
        ),
      ),
    );
  }
}
