import 'package:flutter/material.dart';
import 'package:flutter_follower_card/widgets/textbycard.widget.dart';

import 'adjust.widget.dart';
import 'imagebycard.widget.dart';

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
            imageByCard(),
            AdjustStateless(10, 0),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: textByCard()),
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
                Color.fromRGBO(190, 0, 230, 1),
                Color.fromRGBO(120, 0, 120, 1),
              ]),
              borderRadius: BorderRadius.circular(25),
              color: Colors.amber),
          // child: Column(children: [])
        ));
  }
}
