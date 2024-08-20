import 'package:flutter/material.dart';

import 'package:furniture_store/src/kernel/painless.dart';

List<Furniture> furnitureList = [
  Furniture(
    id: '1',
    description:
        'امروزه مبلمان یکی از اساسی ترین بخش دکوراتیو محسوب میشود. مبلمان ایران استیل با چندین سال سابقه پیشرو آن است که این نیاز را برای مشتریان عزیز برطرف نماید. مدل هوکو یکی از به روزترین مدل ها در سبک مبلمان در عصر جدید می باشد. به طور کلی مدل های هوکو چندین سال است که در بازار عرضه میشوند و به علت داشتن طرح و کیفیت مناسب تا چند سال آینده نیز به این مسیر ادامه میدهند. ',
    colors: null,
    title: 'صندلی مدرن',
    image: GraphicAssets.modernBlueChair,
    price: '۶,۴۰۰ تومان',
  ),
  Furniture(
    id: '2',
    description:
        'امروزه مبلمان یکی از اساسی ترین بخش دکوراتیو محسوب میشود. مبلمان ایران استیل با چندین سال سابقه پیشرو آن است که این نیاز را برای مشتریان عزیز برطرف نماید. مدل هوکو یکی از به روزترین مدل ها در سبک مبلمان در عصر جدید می باشد. به طور کلی مدل های هوکو چندین سال است که در بازار عرضه میشوند و به علت داشتن طرح و کیفیت مناسب تا چند سال آینده نیز به این مسیر ادامه میدهند. ',
    colors: null,
    title: 'مبل راحتی مدل هوکو',
    image: GraphicAssets.floralChair,
    price: '۵,۲۹۰ تومان',
  ),
  Furniture(
    id: '3',
    description:
        'امروزه مبلمان یکی از اساسی ترین بخش دکوراتیو محسوب میشود. مبلمان ایران استیل با چندین سال سابقه پیشرو آن است که این نیاز را برای مشتریان عزیز برطرف نماید. مدل هوکو یکی از به روزترین مدل ها در سبک مبلمان در عصر جدید می باشد. به طور کلی مدل های هوکو چندین سال است که در بازار عرضه میشوند و به علت داشتن طرح و کیفیت مناسب تا چند سال آینده نیز به این مسیر ادامه میدهند. ',
    colors: null,
    title: 'صندلی ایکیا',
    image: GraphicAssets.armchairWithCushions,
    price: '۲,۳۹۰ تومان',
  ),
  Furniture(
    id: '4',
    description:
        'امروزه مبلمان یکی از اساسی ترین بخش دکوراتیو محسوب میشود. مبلمان ایران استیل با چندین سال سابقه پیشرو آن است که این نیاز را برای مشتریان عزیز برطرف نماید. مدل هوکو یکی از به روزترین مدل ها در سبک مبلمان در عصر جدید می باشد. به طور کلی مدل های هوکو چندین سال است که در بازار عرضه میشوند و به علت داشتن طرح و کیفیت مناسب تا چند سال آینده نیز به این مسیر ادامه میدهند. ',
    colors: null,
    title: 'صندلی آشپزخانه',
    image: GraphicAssets.slipperChair,
    price: '۵,۲۹۰ تومان',
  ),
  Furniture(
    id: '5',
    title: 'مبل راحتی مدل هوکو',
    image: GraphicAssets.woodenChair22,
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
    price: '۵,۲۹۰ تومان',
    colors: [
      const Color(0xFF7BA275),
      const Color(0xFFD7D7D7),
      const Color(0xFF171717),
    ],
  ),
  Furniture(
    id: '',
    description: null,
    colors: null,
    title: 'صندلی راحتی مدل هوکو',
    image: GraphicAssets.woodenChair23,
    price: '۶,۲۰۰ تومان',
  ),
];

List<Category> furnitureCategory = [
  Category(
    title: 'صندلی چرم',
    productCount: TextPalette.productCount1,
    image: GraphicAssets.redLeatherChair1,
  ),
  Category(
    title: 'صندلی چوبی',
    productCount: TextPalette.productCount2,
    image: GraphicAssets.woodenChair22,
  ),
];
