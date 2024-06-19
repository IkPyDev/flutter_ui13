import 'package:flutter/material.dart';
import 'package:uis13/photo3/ui6_app_bar.dart';
import 'package:uis13/photo3/ui6_navigation.dart';
import 'package:uis13/photo3/ui6_scroll_discount.dart';
import 'package:uis13/photo3/ui6_search_bar.dart';
import 'package:uis13/photo3/ui7_foods.dart';
import 'package:gap/gap.dart';
import 'package:uis13/photo3/ui6_papular.dart';

class Ui7 extends StatelessWidget {
  const Ui7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe5e5e5),
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
      backgroundColor: const Color(0xffe5e5e5),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(16),

                foodsList(),
                foodsList(),

                const Gap(25),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    controller: PageController(
                      viewportFraction: 0.8,
                      initialPage: 1,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, ind) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: scroll(
                          index: ind,
                          percent: '${(ind + 1) * 10}',
                          withImage: true),
                    ),
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
      bottomNavigationBar: bottomNavigation(1),
    );
  }
}



