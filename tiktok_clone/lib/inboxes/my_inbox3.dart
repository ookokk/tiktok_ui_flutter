import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'okok',
      followingTime: 'started to follow you',
      followBox: 'Follow Back',
      userAvatar: CircleAvatar(
        child: Icon(Icons.man),
      ),
    );
  }
}
