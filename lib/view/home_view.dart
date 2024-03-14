import 'package:flutter/material.dart';
import 'package:toku_learning_language_app/Component/category_item.dart';
import 'package:toku_learning_language_app/view/colors_view.dart';
import 'package:toku_learning_language_app/view/family_member_view.dart';
import 'package:toku_learning_language_app/view/numbers_view.dart';
import 'package:toku_learning_language_app/view/phrases_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Category(
          onTapCategory: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const NumberView();
              },
            ),
          ),
          containerColor: const Color(0xffef9235),
          containerTitle: 'Numbers',
        ),
        Category(
          onTapCategory: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FamilyMemberView(),
            ),
          ),
          containerColor: const Color(0xff5d8b3e),
          containerTitle: 'Family Member',
        ),
        Category(
          onTapCategory: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ColorView(),
            ),
          ),
          containerColor: const Color(0xff854cae),
          containerTitle: 'Colors',
        ),
        Category(
          onTapCategory: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PhrasesView(),
            ),
          ),
          containerColor: const Color(0xff52afd6),
          containerTitle: 'phrases',
        ),
      ],
    );
  }
}
