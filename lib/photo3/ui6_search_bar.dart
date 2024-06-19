import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget searchBar = Container(
  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Row(
    children: [
      const Icon(Icons.search, color: Color(0xFFc0c7cf)),
      const Gap(12),
      const Text(
        'Label here',
        style: TextStyle(
          color: Color(0xFFc0c7cf),
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(),
      const Icon(Icons.mic, color: Color(0xFF19191b)),
      const Gap(4),
      // vertical line
      Container(
        height: 24,
        width: 2,
        color: const Color(0xFF19191b),
      ),
      const Gap(4),
      const Icon(Icons.filter_alt_rounded, color: Color(0xFF19191b)),
    ],
  ),
);