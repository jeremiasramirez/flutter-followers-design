import 'package:flutter/material.dart';

ClipRRect imageByCard() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: CircleAvatar(
        radius: 32,
        child: FadeInImage(
            placeholder: AssetImage("assets/images/loading.gif"),
            image: NetworkImage(
                'http://d3g9pb5nvr3u7.cloudfront.net/authors/539a28913f3c0fd71ed4e43d/2131300937/256.jpg'))),
  );
}
