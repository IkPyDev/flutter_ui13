import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget food(String foodName, String imagePath) => Container(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
  decoration: BoxDecoration(
    color: const Color(0xFFc0c7cf),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
// text bold : food, text smaller: 30 min, image of food in my column
      Text(foodName,
          style: const TextStyle(
              fontSize: 24,
              color: Colors.black87,
              fontWeight: FontWeight.bold)),
      const Gap(8),
      const Text('30 min',
          style: TextStyle(fontSize: 12, color: Colors.black87)),
      const Gap(8),
      Image.asset(
        imagePath,
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    ],
  ),
);