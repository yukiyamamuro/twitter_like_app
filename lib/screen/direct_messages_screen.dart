import 'package:flutter/material.dart';

class DirectMessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: 60,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/monster.png'),
                ),
              ),
            ),
          ),
          title: Text('the monster'),
          subtitle: Text('Hello! I follow you'),
        ),
        Divider(),
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: 60,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/women.png'),
                ),
              ),
            ),
          ),
          title: Text('women'),
          subtitle: Text('はじめまして'),
        ),
      ],
    );
  }
}
