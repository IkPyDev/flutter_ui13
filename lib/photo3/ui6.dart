import 'package:flutter/material.dart';
import 'package:uis13/photo3/ui6_app_bar.dart';
import 'package:uis13/photo3/ui6_foods.dart';
import 'package:uis13/photo3/ui6_navigation.dart';
import 'package:uis13/photo3/ui6_papular.dart';
import 'package:uis13/photo3/ui6_scroll_discount.dart';
import 'package:uis13/photo3/ui6_search_bar.dart';
import 'package:uis13/photo3/utils.dart';
import 'package:gap/gap.dart';

class Ui6 extends StatelessWidget {
  const Ui6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFe5e5e5),
        forceMaterialTransparency: true,
        title: appBar,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: searchBar,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFe5e5e5),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(16),
                Row(
                  children: [
                    Expanded(child: food('Food', 'assets/ui6/img.png')),
                    const Gap(16),
                    Expanded(child: food('Mart', 'assets/ui6/img1.png')),
                    const Gap(16),
                    Expanded(child: food('Courier', 'assets/ui6/img2.png')),
                  ],
                ),
                const Gap(16),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(child: food("Food", 'assets/ui6/img1.png')),
                      const Gap(8),
                      Expanded(
                          flex: 3,
                          child: foodNoImage('Silver membership',
                              'Get Free Delivery On All Orders')),
                    ],
                  ),
                ),
                const Gap(16),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: PageController(
                      viewportFraction: 0.8,
                      initialPage: 1,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, i) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: scroll(index: i, percent: '${(i + 1) * 10}',withImage: true),
                    ),
                    itemCount: bgColorsForDiscounts.length,
                  ),
                ),
                const Gap(8),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Popular Resturant',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF19191b),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(8),
                SizedBox(
                  height: 200,

                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_,i){
                        return popular('assets/ui8/img${i+1}.png');
                      }, separatorBuilder:(_,i){
                    return const SizedBox(width: 5,);
                  }, itemCount: 4),
                )

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigation(0),
    );
  }
}
