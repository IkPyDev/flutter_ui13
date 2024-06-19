
import 'package:flutter/material.dart';

Widget popular(String imagePath) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            imagePath,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.black87,
                weight: 2,
                size: 18,
              ),
            ),
          ),
        )
      ],
    ),
    const SizedBox(height: 4),
    const Text(
      'Ratnagiri Alphonso\n Mangoes',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 12),
    ),
    const Text(
      '₹ 500 | Box',
      style: TextStyle(color: Colors.black87, fontSize: 14),
    ),
    // character of indian money
  ],
);