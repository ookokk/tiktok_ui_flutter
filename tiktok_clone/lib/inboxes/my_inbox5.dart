import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'koko',
      followingTime: 'mentioned you a post',
      followBox: 'Following',
      userAvatar: const CircleAvatar(
        child: Icon(Icons.person),
      ),
    );
  }
}
