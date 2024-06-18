import 'package:flutter/material.dart';
import 'package:uis13/photo1/circle_draw.dart';

class Ui1ItemBig extends StatelessWidget {
  const Ui1ItemBig({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 130,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color:  Color(0xfff65948),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: -70,
              right: -70,
              child: circleDraw(200, const Color(0xffd56b3a))),
          Positioned(
              top: 15,
              right: -40,
              child: circleDraw(100, Colors.transparent, true, Colors.white)),
          Positioned(
            top: 10,
            left: 35,
            child: circleDraw(20, const Color(0xffe7a542)),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/img.png',
                  width: 40, height: 40, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
