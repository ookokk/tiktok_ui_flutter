import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'mitchi',
      followingTime: 'liked your photo',
      followBox: 'Following',
      userAvatar: CircleAvatar(
        child: Image.asset("assets/images/post2.jpg"),
      ),
    );
  }
}
