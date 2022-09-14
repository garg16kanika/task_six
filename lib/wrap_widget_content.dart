import 'package:flutter/material.dart';

class WrapContent extends StatelessWidget {
  final String title;
  final Color colorStart;
  final Color colorEnd;

  const WrapContent(
      {super.key,
      required this.title,
      required this.colorStart,
      required this.colorEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [colorStart, colorEnd]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
