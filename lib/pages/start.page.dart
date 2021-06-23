import 'package:flutter/material.dart';
import 'package:flutter_follower_card/widgets/start-loading.widget.dart';

class StartPage extends StatefulWidget {
  StartPageState createState() => new StartPageState();
}

class StartPageState extends State<StartPage> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [new StartLoadingIndicator()])),
        ));
  }
}
