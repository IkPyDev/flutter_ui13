import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uis13/photo2/ui4_fulls.dart';
import 'package:uis13/photo2/ui4_navigation.dart';
import 'ui4_banner.dart';
import 'ui4_user.dart';



class Ui4 extends StatelessWidget {
  const Ui4({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(

              fit: BoxFit.cover,
              'assets/img.png',
            ),
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            margin: const EdgeInsets.only(right: 16),
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide(color: Colors.black87, width: 1)),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              size: 18,
              Icons.more_horiz,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(16),
              user(),
              Gap(16),
              benefits(),
              Gap(16),
              Ui4Fulls(list),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Ui4Navigation()
    );
  }
}

final list = [
  (Icons.person, 'Profile'),
  (Icons.notifications, 'Notifications'),
  (Icons.audiotrack, 'Audio & Video'),
  (Icons.play_arrow, 'Playback'),
  (Icons.data_saver_off, 'Data Saver Storage'),
  (Icons.security, 'Security'),

];
