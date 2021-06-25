import 'package:flutter/material.dart';

class Followers extends StatefulWidget {
  FollowersState createState() => new FollowersState();
}

class FollowersState extends State<Followers> {
  Widget build(context) {
    return ListView(physics: BouncingScrollPhysics(), children: [
      this.follower("First", 1),
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
          width: 310,
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent]),
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber),
          // child: Column(children: [])
        ));
  }
}
