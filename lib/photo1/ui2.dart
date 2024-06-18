import 'package:flutter/material.dart';
import 'package:uis13/photo1/ui2_app_bar.dart';
import 'package:uis13/photo1/ui2_data.dart';
import 'package:uis13/photo1/ui2_item.dart';

import 'bottom_navigation_ui2.dart';


class Ui2 extends StatelessWidget {
  const Ui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(100),
        child:Ui2AppBar()
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: EdgeInsets.only(left: 24, top: 12, right: 24),
              child: Text(
                'Start a new career',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: ListView.separated(
                padding:  EdgeInsets.symmetric(horizontal: 18),
                itemBuilder: (_, index) => Container(
                  padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    color: list[index].$1,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      list[index].$3,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: list[index].$2,
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) =>  SizedBox(width: 12),
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
             SizedBox(height: 16),
            ListView.separated(
              padding:  EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.vertical,
              physics:  NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, i) => Ui2Item(
                 dataList[i],
              ),
              separatorBuilder: (_, __) =>  SizedBox(height: 12),
              itemCount: dataList.length,
            )
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationUi2(),
    );
  }
}


