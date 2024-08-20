import 'package:flutter/material.dart';
import 'package:furniture_store/src/kernel/painless.dart';

class ProductPoster extends StatelessWidget {
  final String id;
  const ProductPoster({
    super.key,
    required this.id,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 32.0),
      // the height of this container is 80% of our width
      height: size.width * 0.8,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Hero(
            tag: id,
            child: Image.asset(
              image,
              height: size.width * 0.75,
              width: size.width * 0.75,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
