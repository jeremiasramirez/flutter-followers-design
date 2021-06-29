import 'package:flutter/material.dart';

class ListCategories extends StatelessWidget {
  Widget build(context) {
    return ListView(physics: BouncingScrollPhysics(), children: [
      ListTilesForCategories(
          "Economy", Icon(Icons.account_balance, color: Colors.deepPurple)),
      ListTilesForCategories(
          "Finance", Icon(Icons.timeline, color: Colors.deepPurple)),
      ListTilesForCategories(
          "Finance", Icon(Icons.timeline, color: Colors.deepPurple)),
      ListTilesForCategories(
          "Events", Icon(Icons.emoji_events, color: Colors.deepPurple))
    ]);
  }
}

class ListTilesForCategories extends StatelessWidget {
  String title;
  Icon icon;

  ListTilesForCategories(this.title, this.icon);

  Widget build(context) {
    return ListTile(
      contentPadding: EdgeInsets.all(8),
      leading: this.icon,
      onTap: () {},
      title: Text(this.title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey[400]),
    );
  }
}
