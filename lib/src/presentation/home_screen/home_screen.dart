import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:ionicons/ionicons.dart';

import 'package:furniture_store/src/kernel/painless.dart';
import 'package:furniture_store/src/presentation/home_screen/components/category_card.dart';
import 'package:furniture_store/src/presentation/home_screen/components/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.lightGray,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 180.0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 32.0, left: 14.0),
          child: Image.asset(GraphicAssets.logo),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Icon(
              Ionicons.notifications_outline,
              color: ColorPalette.cosmosBlue,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              padding: const EdgeInsets.only(right: 32.0, top: 24.0),
              child: Text(
                TextPalette.browsByCategory,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              height: 310.0,
              padding: const EdgeInsets.only(
                right: 32.0,
                top: 16.0,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: furnitureCategory.map((item) {
                  return CategoryCard(
                    key: Key(item.image),
                    image: item.image,
                    productCount: item.productCount,
                    title: item.title,
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0, top: 22.0),
              child: DottedDashedLine(
                height: 0,
                width: double.infinity,
                axis: Axis.horizontal,
                dashSpace: 6,
                dashColor: ColorPalette.sunFlowerMango.withOpacity(.9),
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(right: 32.0, top: 24.0),
              child: Text(
                TextPalette.recommended,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              height: 250.0,
              margin: const EdgeInsets.only(
                right: 32.0,
                top: 16.0,
              ),
              // width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: furnitureList.map((item) {
                  return ProductCard(
                    id: item.id,
                    title: item.title,
                    price: item.price,
                    image: item.image,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailPage(furniture: item);
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _currentIndex,
        iconSize: 30,
        showElevation: false,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            activeColor: ColorPalette.seaMount,
            icon: const Icon(
              IconlyLight.home,
            ),
            title: Text(
              'خانه',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          FlashyTabBarItem(
            activeColor: ColorPalette.seaMount,
            icon: const Icon(
              IconlyLight.search,
              color: ColorPalette.lavenderBonnet,
            ),
            title: Text(
              'جستجو',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          FlashyTabBarItem(
            activeColor: ColorPalette.seaMount,
            icon: const Icon(
              Ionicons.chatbubbles_outline,
              color: ColorPalette.lavenderBonnet,
            ),
            title: Text(
              'چت',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          FlashyTabBarItem(
            activeColor: ColorPalette.seaMount,
            icon: const Icon(
              IconlyLight.profile,
              color: ColorPalette.lavenderBonnet,
            ),
            title: Text(
              'پروفایل',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
