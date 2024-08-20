// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:furniture_store/src/kernel/painless.dart';

class CategoryCard extends StatelessWidget {
  final String title, image, productCount;

  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
    required this.productCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430.0,
      padding: const EdgeInsets.only(
        left: 16.0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 77.0,
            child: Container(
              height: 200.0,
              width: 205.0,
              decoration: BoxDecoration(
                color: ColorPalette.lavenderBonnet.withOpacity(.1),
                borderRadius: const BorderRadius.all(
                  Radius.circular(32.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 24.0,
                  left: 18.0,
                  right: 18.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      productCount,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Image.asset(
              width: 205.0,
              height: 180.0,
              image,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
