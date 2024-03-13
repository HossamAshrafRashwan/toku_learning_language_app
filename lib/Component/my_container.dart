import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color containerColor;
  final String containerTitle;

  const MyContainer({
    super.key,
    required this.containerColor,
    required this.containerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
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
          containerTitle,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
