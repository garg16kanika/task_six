import 'package:flutter/material.dart';

class Items {
  final String imageUrl;
  final String title;
  final String desc;
  final Color startColor;
  final Color endColor;

  Items(
      {required this.imageUrl,
      required this.title,
      required this.desc,
      required this.startColor,
      required this.endColor});
}

List<Items> items = [
  Items(
    imageUrl: 'assets/image1.jpg',
    title: 'Summer',
    desc: '22 garments',
    endColor: const Color(0xFF997ce3),
    startColor: const Color(0xFF905c92),
  ),
  Items(
    imageUrl: 'assets/image2.jpg',
    title: 'Winter',
    desc: '21 garments',
    endColor: const Color(0xFFd1a492),
    startColor: const Color(0xFFe18093),
  ),
  Items(
    imageUrl: 'assets/image3.jpg',
    title: 'Autumn',
    desc: '2 garments',
    endColor: const Color(0xFFb0a88f),
    startColor: const Color(0xFF30a8d2),
  ),
  Items(
    imageUrl: 'assets/image4.jpg',
    title: 'Spring',
    desc: '22 garments',
    endColor: const Color(0xFFf158a3),
    startColor: const Color(0xFF905c92),
  ),
  Items(
    imageUrl: 'assets/image5.jpg',
    title: 'Flashbacks',
    desc: '22 garments',
    endColor: const Color(0xFFff7334),
    startColor: const Color(0xFF3ba5ee),
  ),
  Items(
    imageUrl: 'assets/image6.jpg',
    title: 'August',
    desc: '22 garments',
    endColor: const Color(0xFF997ce3),
    startColor: const Color(0xFFa665d0),
  ),
];
