import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/Component/item.dart';
import 'package:toku_learning_language_app/model/toku_app_model.dart';

class FamilyMemberView extends StatelessWidget {
  const FamilyMemberView({super.key});

  final List<TokuModel> numbers = const [
    TokuModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: "chichi oya",
      enName: "Father",
      audioPath: 'sounds/family_members/father.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'haha oya',
      enName: 'Mother',
      audioPath: 'sounds/family_members/mother.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'Son',
      audioPath: 'sounds/family_members/son.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'Daughter',
      audioPath: 'sounds/family_members/daughter.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ojiisan',
      enName: 'Grand Father',
      audioPath: 'sounds/family_members/grand father.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'sobo',
      enName: 'Grand mother',
      audioPath: 'sounds/family_members/grand mother.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'oniisan',
      enName: 'Older Brother',
      audioPath: 'sounds/family_members/older bother.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'Older Sister',
      audioPath: 'sounds/family_members/older sister.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otouto',
      enName: 'Younger Brother',
      audioPath: 'sounds/family_members/younger brohter.wav',
    ),
    TokuModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imouto',
      enName: 'Younger Sister',
      audioPath: 'sounds/family_members/younger sister.wav',
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
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => Item(
          item: numbers[index],
          itemColor: const Color(0xff5d8b3e),
        ),
      ),
    );
  }
}
