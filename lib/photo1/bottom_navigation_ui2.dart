import 'package:flutter/material.dart';

class BottomNavigationUi2 extends StatelessWidget {
  const BottomNavigationUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: const Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_filled, color: Colors.grey),
          Icon(Icons.star_border, color: Color(0xff5d65e7)),
          Icon(Icons.favorite_border, color: Colors.grey),
          Icon(Icons.person_3_outlined, color: Colors.grey),
        ],
      ),
    );
  }
}
