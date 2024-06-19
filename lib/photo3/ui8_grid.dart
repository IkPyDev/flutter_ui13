import 'package:flutter/material.dart';

Widget grid(String imagePath) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            imagePath,
            height: 200,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 20,
          bottom: 20,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.black87,
              weight: 2,
              size: 24,
            ),
          ),
        )
      ],
    ),
    const SizedBox(height: 4),
    const Text(
      'Ratnagiri Alphonso Mangoes',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 18),
    ),
    const SizedBox(height: 4),
    const Text(
      '₹ 500 | Box',
      style: TextStyle(color: Colors.black87, fontSize: 14),
    ),
    // character of indian money
  ],
);
