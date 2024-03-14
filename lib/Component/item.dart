import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/model/toku_app_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.itemColor});

  final TokuModel number;
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
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xfffff6dc),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(number.image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.jpName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    number.enName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 13,
              ),
              child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(number.audioPath));
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
