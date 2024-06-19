
import 'package:flutter/material.dart';

Widget appBar = const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'Deliver now',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFFc0c7cf),
        fontWeight: FontWeight.bold,
      ),
    ),
    Row(
      children: [
        Text(
          'Noida 44',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFF19191b),
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.arrow_drop_down_outlined,
          color: Color(0xFF59595c),
          size: 36,
        ),
      ],
    )
  ],
);
