import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget Ui5_items(Color bgColor, double price, int month,String des,String months) => Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/crown.png',
              width: 40,
              height: 40,
              color: Colors.white,
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: '\$$price',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
                children:  [
                  TextSpan(
                    text: months,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(16),
            const Divider(color: Colors.white),
            const Gap(16),
            for (int i = 0; i < 3; ++i)
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.done, color: Colors.white),
                  const Gap(12),
                  Text(
                      '$des '
                    ,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
