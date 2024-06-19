import 'package:flutter/material.dart';

class BottomNavigationUi1 extends StatelessWidget {
  const BottomNavigationUi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: const Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_filled, color: Color(0xFF5d65e7)),
          Icon(Icons.star_border, color: Colors.grey),
          Icon(Icons.favorite_border, color: Colors.grey),
          Icon(Icons.person_3_outlined, color: Colors.grey),
        ],
      ),
    );
  }
}
