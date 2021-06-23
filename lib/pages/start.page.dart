import 'package:flutter/material.dart';
import 'package:flutter_follower_card/services/service.data.dart';
import 'package:flutter_follower_card/widgets/start-loading.widget.dart';

class StartPage extends StatefulWidget {
  StartPageState createState() => new StartPageState();
}

class StartPageState extends State<StartPage> {
  Widget build(context) {
    this.toHome(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [new StartLoadingIndicator()])),
        ));
  }

  void toHome(BuildContext context) {
    Future.delayed(Duration(milliseconds: 4000), () {
      return 1;
    }).then((int value) {
      if (value == 1) Navigator.pushReplacementNamed(context, "home");
    });
  }
}
