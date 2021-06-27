import 'package:flutter/material.dart';

class AdjustStateless extends StatelessWidget {
  double width = 0;
  double height = 0;
  AdjustStateless(this.width, this.height);

  Widget build(context) {
    return SizedBox(width: this.width, height: this.height);
  }
}
