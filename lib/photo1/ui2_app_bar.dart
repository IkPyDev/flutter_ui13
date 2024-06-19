import 'package:flutter/material.dart';
import 'package:uis13/photo1/circle_draw.dart';

class Ui2AppBar extends StatelessWidget {
  const Ui2AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration:  BoxDecoration(
        color: Color(0xFFfe6d5d),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(56),
          bottomRight: Radius.circular(56),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned(
            top: 20,
            right: -90,
            child: circleDraw(
              300,
              Color(0xFFfd7e6d),
            ),
          ),
          Positioned(
            top: -50,
            left: -50,
            child: circleDraw(
              150,
              Color(0xFFf36453),
            ),
          ),
          Positioned(
            top: -170,
            right: -20,
            child: circleDraw(
              270,
              Colors.transparent,
              true,
              Color(0xFFfd7e6d),
            ),
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 24),
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 24,
                ),
                Spacer(),
                Text(
                  'Recommended',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
