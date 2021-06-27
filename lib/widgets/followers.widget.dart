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
    ]);
  }

  Widget follower(String name, int ranking) {
    return Transform.scale(
        scale: .9,
        child: Container(
          width: 310,
          height: 100,
          child: Row(children: [
            this.imageByCard(),
            AdjustStateless(12, 0),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Elon Musk")])
          ]),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(200, 20, 140, 1),
                    blurRadius: 0,
                    spreadRadius: 1.2)
              ],
              gradient: LinearGradient(colors: [
                Color.fromRGBO(120, 0, 100, .8),
                Color.fromRGBO(200, 20, 140, 1),
              ]),
              borderRadius: BorderRadius.circular(25),
              color: Colors.amber),
          // child: Column(children: [])
        ));
  }

  ClipRRect imageByCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
          radius: 30,
          child: Image(
              image: NetworkImage(
                  'http://d3g9pb5nvr3u7.cloudfront.net/authors/539a28913f3c0fd71ed4e43d/2131300937/256.jpg'))),
    );
  }
}
