import 'package:flutter/material.dart';
import 'package:flutter_follower_card/pages/home.page.dart';
import 'package:flutter_follower_card/pages/start.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Follower Card',
      initialRoute: "start",
      routes: {
        "start": (context) => new StartPage(),
        "home": (context) => new HomePage()
      },
    );
  }
}
