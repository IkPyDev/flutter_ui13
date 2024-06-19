import 'package:flutter/material.dart';
import 'package:uis13/photo1/circle_draw.dart';
import 'package:uis13/photo1/ui2_data.dart';
import 'package:gap/gap.dart';


class Ui2Item extends StatelessWidget {
  final UI2Data data;

  const Ui2Item(this.data,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 220,
          clipBehavior: Clip.hardEdge,
          width: 130,
          decoration: BoxDecoration(
            color: data.bgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: -80,
                right: -70,
                child: circleDraw(200, data.circleColor1),
              ),
              Positioned(
                top: 15,
                right: -40,
                child: circleDraw(100, Colors.transparent, true, Colors.white),
              ),
              Positioned(
                top: 10,
                left: 35,
                child: circleDraw(20, data.circleColor2),
              ),
            ],
          ),
        ),
         Gap( 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text(
                  data.name,
                  style:  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7178d3),
                  ),
                ),
                 Spacer(),
                // small circle before course count
                Container(
                  width: 8,
                  height: 8,
                  decoration:  BoxDecoration(
                    color: Color(0xFFd56b3a),
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  '\t${data.courseNumber} Courses',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey[800],
                  ),
                ),
              ]),
              Text(
                data.title,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
               Gap(8),
              Text(
                data.description,
                style:  TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: data.topics
                      .map(
                        (e) =>
                        Container(
                            margin:  EdgeInsets.only(right: 10),
                            padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color:  Color(0xFFe1cec3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(e, style:  TextStyle(fontSize: 10, color: Color(0xFF7178d3)))),
                  )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
