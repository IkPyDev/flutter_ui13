import 'package:flutter/material.dart';

Widget circleDraw(
    double diameter,
    Color bgColor, [
      bool hasBorder = false,
      Color borderColor = Colors.transparent,
    ]) =>
    Container(
      height: diameter * 1,
      width: diameter * 1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
        border: hasBorder ? Border.all(color: borderColor, width: 2) : null,
      ),
    );
