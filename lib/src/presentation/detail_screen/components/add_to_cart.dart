import 'package:flutter/material.dart';

import 'package:furniture_store/src/kernel/constants/colors.dart';

import 'package:ionicons/ionicons.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 32.0 / 2,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.cosmosBlue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Directionality(
            textDirection: TextDirection.ltr,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Ionicons.chevron_back,
                color: ColorPalette.sunFlowerMango,
              ),
              label: const Text(
                "اضافه کردن به سبد خرید",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
