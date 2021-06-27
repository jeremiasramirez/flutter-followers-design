import 'package:flutter/material.dart';

import 'adjust.widget.dart';

class Followers extends StatefulWidget {
  FollowersState createState() => new FollowersState();
}

class FollowersState extends State<Followers> {
  Widget build(context) {
    return ListView(physics: BouncingScrollPhysics(), children: [
      AdjustStateless(0, 15),
      this.follower("First", 1),
      this.follower("First", 1),
      this.follower("First", 1),
      this.follower("First", 1),
      this.follower("First", 1),
      this.follower("First", 1),
    ]);
  }

  Widget follower(String name, int ranking) {
    return Transform.scale(
        scale: .9,
        child: Container(
          width: 315,
          height: 150,
          child: Row(children: [
            AdjustStateless(14, 0),
            this.imageByCard(),
            AdjustStateless(10, 0),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: this.textByCard()),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.more_horiz, size: 40, color: Colors.grey[300]),
                Text(
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t8 \n\t\t\t\t\t\t\t\tRanking\t\t",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'arial',
                        color: Colors.grey[300]))
              ],
            )
          ]),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(200, 20, 140, 1),
                    blurRadius: 0,
                    spreadRadius: 1.2)
              ],
              gradient: LinearGradient(colors: [
                Color.fromRGBO(200, 0, 200, .8),
                Color.fromRGBO(200, 20, 140, 1),
              ]),
              borderRadius: BorderRadius.circular(25),
              color: Colors.amber),
          // child: Column(children: [])
        ));
  }

  List<Widget> textByCard() {
    return [
      AdjustStateless(0, 10),
      Text("Elon Musk\t\t\t\t\t\t\t\t\t\t",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              fontFamily: 'arial',
              color: Colors.white)),
      AdjustStateless(0, 8),
      Text("\t\t\tTitle: Science\t\t\t\t\t\t\t\t\t\t\t\t\t",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'arial',
              color: Colors.grey[300])),
      AdjustStateless(0, 18),
      Row(children: [
        Text(" \t\t\t2391 \n Popularity",
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        AdjustStateless(10, 0),
        Text("\t4200\n Like\t\t\t",
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        AdjustStateless(10, 0),
        Text(" \t\t\t110k \n Follower",
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        AdjustStateless(10, 0),
      ])
    ];
  }

  ClipRRect imageByCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
          radius: 32,
          child: Image(
              image: NetworkImage(
                  'http://d3g9pb5nvr3u7.cloudfront.net/authors/539a28913f3c0fd71ed4e43d/2131300937/256.jpg'))),
    );
  }
}
