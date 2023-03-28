import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'messi',
      followingTime: 'started to follow you',
      followBox: 'Following',
      userAvatar: const CircleAvatar(
        child: Icon(Icons.man),
      ),
    );
  }
}
