import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  const TweetCard({
    Key? key,
    required this.tweet,
  }) : super(key: key);

  final String tweet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TweerHeader(),
              Text(
                tweet,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 30),
              ),
              TweetBottomButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class TweerHeader extends StatelessWidget {
  const TweerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        Text(
          'the monster',
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

class TweetBottomButtons extends StatelessWidget {
  const TweetBottomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.mode_comment_outlined,
                color: Colors.grey,
              ),
            ),
            Text('39')
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Text('110')
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.repeat_outlined,
                color: Colors.greenAccent,
              ),
            ),
            Text('12')
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Icon(
            Icons.share,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
