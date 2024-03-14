import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    this.containerColor,
    required this.containerTitle,
    this.onTapCategory,
  });

  final Color? containerColor;
  final String? containerTitle;
  final Function()? onTapCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: GestureDetector(
        onTap: onTapCategory,
        child: Container(
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 65,
          child: Text(
            containerTitle!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
