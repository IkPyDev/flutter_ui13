import 'package:flutter/material.dart';
import 'package:uis13/photo3/ui8_app_bar.dart';
import 'package:uis13/photo3/ui8_grid.dart';

class Ui8 extends StatelessWidget {
  const Ui8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 5,
              //
            ),
            itemBuilder: (_, i) => grid('assets/ui8/img${i+1}.png'),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 60,
        color: const Color(0xFFe5e5e5),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black87,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: const Text(
            'Add To Cart',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}



