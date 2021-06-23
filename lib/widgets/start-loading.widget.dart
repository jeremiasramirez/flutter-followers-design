import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class StartLoadingIndicator extends StatefulWidget {
  StartLoadingIndicatorState createState() => new StartLoadingIndicatorState();
}

class StartLoadingIndicatorState extends State<StartLoadingIndicator> {
  Widget build(context) {
    return ZoomIn(
        child: Container(
            child: CircularProgressIndicator(
                strokeWidth: 5.1, color: Colors.purpleAccent),
            width: 140.0,
            height: 140.0,
            decoration: BoxDecoration(color: Colors.transparent)));
  }
}
