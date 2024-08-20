// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:furniture_store/src/kernel/painless.dart';

class ProductCard extends StatelessWidget {
  final String id, title, price, image;
  final void Function() onPressed;

  const ProductCard({
    super.key,
    required this.image,
    required this.onPressed,
    required this.title,
    required this.price,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(
          left: 15.0,
        ),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: ColorPalette.lavenderBonnet.withOpacity(.1),
          borderRadius: const BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: id,
              child: Image.asset(
                image,
                height: 140.0,
                width: 140.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10.0),
            Text(
              price,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
