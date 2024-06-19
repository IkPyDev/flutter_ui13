import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uis13/photo2/ui5_items.dart';

class Ui5 extends StatelessWidget {
  const Ui5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Subscribe to Premium',
                  style: TextStyle(
                    color: Color(0xff390909),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(16),
                Text(
                  'Enjoy listening songs and podcasts with better audio quality and without restricts, and without ads.',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(16),
                Ui5_items(Colors.orange, 9.99, 1,"Listen with better audio quality"," month"),
                Ui5_items(Colors.deepPurpleAccent, 19.99, 1,"Listen with better audio quality"," 3/month"),
                Ui5_items(Colors.red, 29.99, 1,"Listen with better audio quality"," 12/month"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

