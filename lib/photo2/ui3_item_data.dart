import 'package:flutter/material.dart';
import 'package:uis13/photo2/ui3_data.dart';
import 'package:gap/gap.dart';

class Ui3ItemData extends StatelessWidget {
  final Ui3Data data;

   const Ui3ItemData({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 96,
          width: 96,
          decoration: BoxDecoration(
            image:  DecorationImage(
              image: AssetImage('assets/img_1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
         SizedBox(width: 16),
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style:  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                 SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      data.artist,
                      style:  TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                     Text('\t\t|\t\t', style: TextStyle( color: Colors.black87),),
                    Text(
                      data.duration,
                      style:  TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Gap(12),
                Row(
                  children: [
                     Icon(Icons.favorite_border, size: 16, color: Colors.black87),
                    Gap(20),
                     Icon(Icons.playlist_add, size: 16, color: Colors.black87),
                    Gap(20),
                     Icon(Icons.download, size: 16, color: Colors.black87),
                    Gap(20),
                     Icon(Icons.more_vert, size: 16, color: Colors.black87),
                     Spacer(),
                    // play icon with red background in a container
                    Container(
                      padding:  EdgeInsets.all(2),
                      decoration:  BoxDecoration(
                        color: Color(0xfffd0056),
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(
                        Icons.play_arrow,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
