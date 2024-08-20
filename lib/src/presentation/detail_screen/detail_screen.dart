import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import 'package:furniture_store/src/kernel/painless.dart';
import 'package:furniture_store/src/presentation/detail_screen/components/add_to_cart.dart';
import 'package:furniture_store/src/presentation/detail_screen/components/list_of_colors.dart';
import 'package:furniture_store/src/presentation/detail_screen/components/product_image.dart';

class DetailPage extends StatelessWidget {
  final Furniture furniture;

  const DetailPage({super.key, required this.furniture});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.seaMount.withOpacity(.7),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        centerTitle: false,
        actions: <Widget>[
          Text(
            'بازگشت',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(width: 10.0),
          IconButton(
            padding: const EdgeInsets.only(left: 32.0),
            icon: const Icon(
              Ionicons.chevron_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                decoration: const BoxDecoration(
                  color: ColorPalette.seaMount,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: ProductPoster(
                        id: furniture.id,
                        size: screenSize,
                        image: furniture.image,
                      ),
                    ),
                    const ListOfColors(),
                    Row(
                      children: [
                        Text(
                          furniture.title,
                          style: GoogleFonts.vazirmatn(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          furniture.price,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      furniture.title,
                      style: GoogleFonts.vazirmatn(
                        color: ColorPalette.seaMount,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0, top: 14.0),
                      child: Text(
                        '${furniture.description}',
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.vazirmatn(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ChatAndAddToCart(),
            ],
          ),
        ),
      ),
    );
  }
}
