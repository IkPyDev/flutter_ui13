import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget user() => Row(
  children: [
    Stack(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/img.png'),
        ),
        Positioned(
          right: 2,
          bottom: 2,
          child: Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.edit,
              size: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Gap(16),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Andrew Ainsley',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
        Text(
          'andrew_ainsley@gmail.com',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    ),
  ],
);