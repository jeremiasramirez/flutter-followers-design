import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_follower_card/widgets/adjust.widget.dart';
import 'package:flutter_follower_card/widgets/category.widget.dart';
import 'package:flutter_follower_card/widgets/followers.widget.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Social"),
            backgroundColor: Color.fromRGBO(100, 0, 170, 1),
            leading: FlatButton(
                onPressed: () {},
                child: Icon(Icons.arrow_back, color: Colors.white)),
            bottom: TabBar(
              tabs: this.tabs(),
            ),
          ),
          body: TabBarView(
            children: [
              FadeInDown(
                  from: 100,
                  duration: Duration(milliseconds: 200),
                  child: Followers()),
              ListCategories(),
              FadeInDown(
                  duration: Duration(milliseconds: 200), child: Followers()),
            ],
          ),
        ),
      ),
    );
  }

  List<Text> tabs() {
    return [
      Text(
        "Followers",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      Text(
        "Category",
        style: TextStyle(fontSize: 20, color: Colors.grey[200]),
      ),
      Text(
        "Settings",
        style: TextStyle(fontSize: 20, color: Colors.grey[200]),
      )
    ];
  }
}
