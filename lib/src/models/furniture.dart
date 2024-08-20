import 'package:flutter/material.dart';

class Furniture {
  final String id;
  final String title;
  final String image;
  final String price;
  final String? description;
  final List<Color>? colors;

  Furniture({
    this.description,
    this.colors,
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });
}
