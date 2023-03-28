import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'shayk',
      followingTime: 'started to follow you',
      followBox: 'Following',
      userAvatar: const CircleAvatar(
        child: Icon(CupertinoIcons.person),
      ),
    );
  }
}
