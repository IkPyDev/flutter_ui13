import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget scroll(
    {required int index,
      required String percent,
      bool withImage = false}) =>
    Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColorsForDiscounts[index],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Get up to',
                  style: TextStyle(fontSize: 14, color: Colors.black87)),
              const Gap(16),
              Text('$percent% OFF',
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold)),
              const Gap(16),
              const Text('on all food\norders',
                  style: TextStyle(fontSize: 14, color: Colors.black87)),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('Buy Now',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          if (withImage)
            Expanded(
                child: Image.asset('assets/ui6/img2.png',
                    height: 100, width: 100, fit: BoxFit.cover))
          else
            const Spacer(),
        ],
      ),
    );

final bgColorsForDiscounts = [
  Colors.deepPurpleAccent,
  Colors.deepOrangeAccent,
  Colors.greenAccent,
  Colors.redAccent,
];