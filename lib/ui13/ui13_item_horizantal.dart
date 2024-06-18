import 'package:flutter/material.dart';

class Ui13ItemHorizantal extends StatelessWidget {
  final IconData icon;

  Ui13ItemHorizantal(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blue[900]),
        child: Icon(
          icon,
          size: 20,
          color: Colors.grey[500],
        ));
  }
}
