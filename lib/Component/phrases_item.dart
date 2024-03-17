import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/model/phrases_model.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.phrase, required this.itemColor});

  final PhrasesModel phrase;
  final Color itemColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: itemColor,
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase.jpName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13.5,
                    ),
                  ),
                  Text(
                    phrase.enName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 13,
              ),
              child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(phrase.audioPath));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
