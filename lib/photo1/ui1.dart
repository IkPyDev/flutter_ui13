import 'package:flutter/material.dart';
import 'package:uis13/photo1/circle_draw.dart';
import 'package:uis13/photo1/ui1_item_big.dart';
import 'package:uis13/photo1/ui1item.dart';
import 'package:gap/gap.dart';


import 'bottom_navigation_ui1.dart';

class Ui1 extends StatelessWidget {
   const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          height: 220,
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration:  BoxDecoration(
            color: Color(0xff7a81db),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(56),
              bottomRight: Radius.circular(56),
            ),
          ),
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Positioned(
                top: 20,
                right: -90,
                child: circleDraw(
                  300,
                   Color(0xff888fdf),
                ),
              ),
              Positioned(
                top: -50,
                left: -50,
                child: circleDraw(
                  150,
                   Color(0xff7178d3),
                ),
              ),
              Positioned(
                top: -170,
                right: -20,
                child: circleDraw(
                  270,
                  Colors.transparent,
                  true,
                   Color(0xff9aa0de),
                ),
              ),
              Container(
                padding:
                     EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Search sources',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                    Text(
                      'Type Something...',
                      style: TextStyle(
                        color: Color(0xffc7ccfc),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 24, top: 12, right: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // text and container
                     Text(
                      'Featured',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                     Spacer(),
                    Container(
                      padding:  EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color:  Color(0xfff9eceb),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffe87c7c),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(height: 16),
               SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Ui1ItemBig(),
                    Gap(12),
                    Ui1item(),
                    Gap(12),
                    Ui1item(),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 24, top: 24, right: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // text and container
                     Text(
                      'Business',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                     Spacer(),
                    Container(
                      padding:  EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color:  Color(0xfff9eceb),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff00396a),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(height: 16),
               SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Ui1ItemBig(),
                    Gap(12),
                    Ui1item(),
                    Gap(12),
                    Ui1item(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
          height: 56,
          alignment: Alignment.center,
          child:  BottomNavigationUi1(),
        )
    );
  }
}
