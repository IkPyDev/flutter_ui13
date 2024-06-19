import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget foods(String foodName, String imagePath) => Container(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
// text bold : food, text smaller: 30 min, image of food in my column

      Container(
        decoration: BoxDecoration(
          color: const Color(0xFFc0c7cf),
          borderRadius: BorderRadius.circular(60),
        ),
        child: Image.asset(
          imagePath,
          height: 70,
          width: 70,

          fit: BoxFit.fill,
        ),
      ),
      const Gap(8),
      Center(
        child: Text(foodName,
            style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.bold)),
      ),
    ],
  ),
);

Widget foodsList() {
  return SizedBox(
    height: 130,
    child: ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, i) {
        return foods(list[i].name, list[i].url);
      },
      separatorBuilder: (_, i) {
        return const SizedBox(
          width: 8,
        );
      },
      itemCount: list.length,
    ),
  );
}

var list = [
  FoodsData('Burger', 'assets/ui7/img_8.png'),
  FoodsData('Pizza', 'assets/ui7/img_9.png'),
  FoodsData('Pasta', 'assets/ui7/img_10.png'),
  FoodsData('Sandwich', 'assets/ui7/img_11.png'),
  FoodsData('Burger', 'assets/ui7/img_8.png'),
  FoodsData('Pizza', 'assets/ui7/img_9.png'),
  FoodsData('Pasta', 'assets/ui7/img_10.png'),
  FoodsData('Sandwich', 'assets/ui7/img_11.png')
];

class FoodsData {
  final String name;
  final String url;

  FoodsData(this.name, this.url);
}
