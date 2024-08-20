import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:furniture_store/src/kernel/painless.dart';

import 'color_dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: ColorPalette.sunFlowerMango,
          ),
          ColorDot(
            fillColor: ColorPalette.boatsWain,
          ),
        ],
      ),
    );
  }
}
