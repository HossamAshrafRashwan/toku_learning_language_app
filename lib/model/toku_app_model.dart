import 'package:audioplayers/audioplayers.dart';

class TokuModel {
  final String? image;
  final String jpName;
  final String enName;
  final String audioPath;

  const TokuModel({
    this.image,
    required this.jpName,
    required this.enName,
    required this.audioPath,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(audioPath));
  }
}
