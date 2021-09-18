import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        ListTile(
          title: Text('お知らせ１'),
        ),
        Divider(),
        ListTile(
          title: Text('お知らせ２'),
        ),
        Divider(),
        ListTile(
          title: Text('お知らせ３'),
        ),
        Divider(),
        ListTile(
          title: Text('お知らせ４'),
        ),
      ],
    );
  }
}
