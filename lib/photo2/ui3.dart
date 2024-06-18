import 'package:flutter/material.dart';
import 'package:uis13/photo2/ui3_data.dart';
import 'package:uis13/photo2/ui3_item_data.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';


class Ui3 extends StatelessWidget {

  const Ui3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black45,width: 2)
                ),
                  child: Icon(Icons.more_horiz,color: Colors.grey,))
            ],
            leading: Icon(Icons.arrow_back_ios)
            ,
            title:  Text('Notifications',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            bottom: const TabBar(
              tabs: [
                Text(
                  "Musics",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "Podcasts",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  for (final key in podcasts.keys)
                    SliverStickyHeader(
                      header: Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          key,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                              (context, i) => Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              margin: const EdgeInsets.only(bottom: 16),
                              child: Ui3ItemData(data: podcasts[key]![i])),
                          childCount: podcasts[key]!.length,
                        ),
                      ),
                    ),
                ],
              ),
              // const Text('data1'),
              CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  for (final key in podcasts.keys)
                    SliverStickyHeader(
                      header: Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          key,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                              (context, i) => Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              margin: const EdgeInsets.only(bottom: 16),
                              child: Ui3ItemData(data: podcasts[key]![i])),
                          childCount: podcasts[key]!.length,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          )),
    );
  }
}
