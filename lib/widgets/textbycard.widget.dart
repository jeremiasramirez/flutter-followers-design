import 'package:flutter/material.dart';

import 'adjust.widget.dart';

List<Widget> textByCard() {
  return [
    AdjustStateless(0, 10),
    Text("Elon Musk\t\t\t\t\t\t\t\t\t\t",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            fontFamily: 'arial',
            color: Colors.white)),
    AdjustStateless(0, 8),
    Text("\t\t\tTitle: Science\t\t\t\t\t\t\t\t\t\t\t\t\t",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'arial',
            color: Colors.grey[300])),
    AdjustStateless(0, 18),
    Row(children: [
      Text(" \t\t\t2391 \n Popularity",
          style: TextStyle(
              color: Colors.grey[300],
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      AdjustStateless(10, 0),
      Text("\t4200\n Like\t\t\t",
          style: TextStyle(
              color: Colors.grey[300],
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      AdjustStateless(10, 0),
      Text(" \t\t\t110k \n Follower",
          style: TextStyle(
              color: Colors.grey[300],
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      AdjustStateless(10, 0),
    ]),
  ];
}
