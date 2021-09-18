import 'package:flutter/material.dart';
import 'package:twitter_copy_app/screen/direct_messages_screen.dart';
import 'package:twitter_copy_app/screen/home_screen.dart';
import 'package:twitter_copy_app/screen/notification_screen.dart';
import 'package:twitter_copy_app/screen/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TwitterLikeApp',
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  static List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    DirectMessagesScreen(),
  ];

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter like App'),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Color(0xFFBDBDBD),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '検索',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: '通知',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: 'DM',
            backgroundColor: Colors.grey,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
