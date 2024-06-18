import 'package:flutter/material.dart';

class Ui13Avatar extends StatelessWidget {
  final String imgUrl;
  final Color imgColor;

  const Ui13Avatar(this.imgUrl,this.imgColor,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: NetworkImage(imgUrl)
          ),
          border: Border.all(color: imgColor,width: 2,)
      ),
      // child: Image.network(fit: BoxFit.cover,"https://w7.pngwing.com/pngs/129/292/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png")
    );
  }
}
