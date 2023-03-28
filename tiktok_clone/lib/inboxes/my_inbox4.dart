import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'pele',
      followingTime: 'started to follow you',
      followBox: 'Following',
      userAvatar: CircleAvatar(
        child: Image.asset("assets/images/post3.jpg"),
      ),
    );
  }
}
