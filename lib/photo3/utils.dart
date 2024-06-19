import 'package:flutter/material.dart';
import 'package:gap/gap.dart';





Widget foodNoImage(String title, String subtitle) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFc0c7cf),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// text bold : food, text smaller: 30 min, image of food in my column
          Text(title,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold)),
          const Gap(8),
          Text(subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.black87)),
          const Gap(8),
        ],
      ),
    );



Widget circleFoods(String title, String image) {
  return Column(
    children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[400],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(image, width: 60, height: 60),
        ),
      ),
      const Gap(8),
      Text(title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ],
  );
}
