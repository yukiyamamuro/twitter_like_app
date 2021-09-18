import 'package:flutter/material.dart';
import 'package:twitter_copy_app/components/tweet_card.dart';

class HomeScreen extends StatelessWidget {
  final List<String> tweets = <String>[
    'good night'
        'sleepy',
    'lunch time',
    'running now',
    'coffee time',
    'hello',
    'morning',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(2),
      itemCount: tweets.length,
      itemBuilder: (BuildContext context, int i) {
        return TweetCard(tweet: tweets[i]);
      },
    );
  }
}
