import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:uis13/photo4/utils.dart';

class Ui9 extends StatefulWidget {
  const Ui9({super.key});

  @override
  State<Ui9> createState() => _Ui1State();
}

class _Ui1State extends State<Ui9> with TickerProviderStateMixin {
  // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Transform.rotate(
            angle: 90* math.pi/180,
              child: const Icon(Icons.stacked_bar_chart_sharp,)),
        ),
        actions: [
          Container(
            height: 48,
            width: 48,
            decoration:  const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 6),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200, color: Colors.grey[700]),
              ),
              const SizedBox(height: 4),
              Text(
                'Products',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey[900]),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Products',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.filter_alt),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _filters,
              const SizedBox(height: 16),

              // item(dataList[0].$1, dataList[0].$2, dataList[0].$3, dataList[0].$4),


              SizedBox(
                height: 300,
                child: ListView.separated(
                  shrinkWrap: true,
                  // physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => item(dataList[index].$1, dataList[index].$2, dataList[index].$3, dataList[index].$4),
                  itemCount: dataList.length,
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: MyMotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "Home1",
        icons: const [Icons.store, Icons.search, Icons.shopping_basket, LineIcons.heart],
        tabSize: 50,
        tabBarHeight: 55,
        tabIconColor: Colors.grey,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.orange,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
        labels: const ["Home1", "Home2", "Home3", "Home4"],
        areLabelsVisible: false,
      ),
    );
  }
}

const list = [
  ('assets/nike.png', 'Sneakers'),
  ('assets/img_17.png', 'Watch'),
  ('assets/img_18.png', 'Jacket'),
];

const dataList = [
  ('assets/nike.png', 'Nike Air Max 200', 'Trending now', '240.00'),
  ('assets/nike97.png', 'Nike Air Max 97', 'Luxury watch', '220.00'),
  ('assets/nike.png', 'Nike Air Max 200', 'Trending now', '240.00'),
];

Widget _filters = SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      for (final item in list)
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ChoiceChip(
            selectedColor: Colors.white,
            backgroundColor: Colors.grey[200],
            selected: item == list.first,
            side: BorderSide(color: item == list.first ? Colors.orange : Colors.transparent),
            avatar: Image.asset(item.$1, width: 24),
            label: Text(
              item.$2,
            ),
          ),
        )
    ],
  ),
);

Widget item(String imagePath, String title, String subtitle, String price) => Container(
  height: 260,
  width: 200,
  padding: const EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(50),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Padding(
        padding: EdgeInsets.only(top: 20,left:20),
        child: Align(

          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.favorite_border,
            color: Colors.grey,
            size: 24,
          ),
        ),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange[100]!,
            ),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(-0.4)..rotateY(math.pi),
            child: Image.asset(imagePath, height: 100),
          ),
        ],
      ),
      const SizedBox(height: 24),
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 1.2),
      ),
      const SizedBox(height: 4),
      Text(
        subtitle,
        style: const TextStyle(fontSize: 14, color: Colors.orange, fontWeight: FontWeight.w700),
      ),
      const SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text('\$\t', style: TextStyle(color: Colors.orange, fontSize: 14, fontWeight: FontWeight.bold))),
          Text(price, style: const TextStyle(color: Colors.black87, fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      )
    ],
  ),
);
