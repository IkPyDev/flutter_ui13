import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Ui4Navigation()=>Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    IconButton(
      icon: const Icon(Icons.home),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.explore),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.library_music),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.person,color: Colors.red,),
      onPressed: () {},
    ),
  ],
);