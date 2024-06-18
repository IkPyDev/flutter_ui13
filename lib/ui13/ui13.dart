import 'package:flutter/material.dart';
import 'package:uis13/ui13/ui13_item_horizantal.dart';
import 'package:gap/gap.dart';

class Ui13 extends StatelessWidget {
  var list = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkuMrxuwzt4x95v1iYMugb9V5bcPKObVeMHQiEbuRl1weI2qJtehmiwvmHQpr7aADclhw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkcMKh11l9FLRwa2kTls-6aFrVZPyiZZ6RKBuCUpHruEvKcw9-Y37ckv-ZrlxCLTS4Vw0&usqp=CAU",
    "https://i.pinimg.com/originals/7c/c7/a6/7cc7a630624d20f7797cb4c8e93c09c1.png",
    "https://cdn-icons-png.flaticon.com/512/6858/6858504.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkuMrxuwzt4x95v1iYMugb9V5bcPKObVeMHQiEbuRl1weI2qJtehmiwvmHQpr7aADclhw&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkuMrxuwzt4x95v1iYMugb9V5bcPKObVeMHQiEbuRl1weI2qJtehmiwvmHQpr7aADclhw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkcMKh11l9FLRwa2kTls-6aFrVZPyiZZ6RKBuCUpHruEvKcw9-Y37ckv-ZrlxCLTS4Vw0&usqp=CAU",
    "https://i.pinimg.com/originals/7c/c7/a6/7cc7a630624d20f7797cb4c8e93c09c1.png",
    "https://cdn-icons-png.flaticon.com/512/6858/6858504.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkuMrxuwzt4x95v1iYMugb9V5bcPKObVeMHQiEbuRl1weI2qJtehmiwvmHQpr7aADclhw&usqp=CAU",

  ];
   Ui13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: Icon(Icons.list,color: Colors.black45,),
          title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.list,
            size: 32,
          ),
          Icon(
            Icons.notifications,
            color: Colors.grey[500],
          ),
        ],
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hello",
            style: TextStyle(color: Colors.grey, fontSize: 19),
          ),
          Text(
            "Mr.Anthony Burke",
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Stack(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50),
                    padding: EdgeInsets.all(8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Image.network(
                        fit: BoxFit.fill,
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Dropbox_Icon.svg/2202px-Dropbox_Icon.svg.png"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 250,
                  width: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Ui13ItemHorizantal(Icons.cloud),
                          Ui13ItemHorizantal(Icons.apps_rounded),
                          Ui13ItemHorizantal(Icons.data_usage_outlined),
                        ],
                      ),
                      Gap(15),
                      Text(
                        "Dropbox",
                        style:
                            TextStyle(color: Colors.yellowAccent, fontSize: 18),
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("66GB",
                              style: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 10)),
                          Text("600GB",
                              style: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 10)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                        width: 200,
                        child: LinearProgressIndicator(
                          // color: Colors.yellow,
                          // backgroundColor: Colors.white,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.amber,
                          ),
                          value: 0.6,
                          // semanticsLabel: 'Linear progress indicator',
                        ),
                      )
                    ],
                  ),
                ),
              ])
            ],
          ),
          Text("Co-owners",style: TextStyle(color: Colors.grey),),
          SizedBox(

            height: 50,
            child: ListView.separated(
              shrinkWrap: true,
            primary: true,
            scrollDirection: Axis.horizontal,
            itemBuilder:(c,i) {


              if(i!=list.length) {

                return Container(
                margin: EdgeInsets.all(2),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage(list[i])
                    ),
                    border: Border.all(color: Colors.red,width: 2,)
                ),
                // child: Image.network(fit: BoxFit.cover,"https://w7.pngwing.com/pngs/129/292/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png")
              );
              }else{
                return Container(
                  margin: EdgeInsets.all(2),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),

                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage("https://w7.pngwing.com/pngs/972/334/png-transparent-computer-icons-add-logo-desktop-wallpaper-add-thumbnail.png")
                      ),
                      border: Border.all(color: Colors.red,width: 2,)
                  ),
                  // child: Image.network(fit: BoxFit.cover,"https://w7.pngwing.com/pngs/129/292/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png")
                );


              }
            }, separatorBuilder:(c,i) {
              return SizedBox(width: 5,);

            }, itemCount: list.length+1),
          )
        ],
      ),
    );
  }
}
