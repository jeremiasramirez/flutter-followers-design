import 'package:flutter/material.dart';
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
            title: Text("Social media"),
            backgroundColor: Colors.deepPurple,
            leading: FlatButton(
                onPressed: () {},
                child: Icon(Icons.arrow_back, color: Colors.white)),
            bottom: TabBar(
              tabs: this.tabs(),
            ),
          ),
          body: TabBarView(
            children: [Followers(), Text("Dato 2"), Text("Dato 3")],
          ),
        ),
      ),
    );
  }

  List<Text> tabs() {
    return [
      Text(
        "Followers",
        style: TextStyle(fontSize: 23, color: Colors.white),
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
