import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/inbox_template.dart';

class MyInbox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InboxTemplate(
      username: 'ronaldo',
      followingTime: 'liked your photo',
      followBox: 'Follow Back',
      userAvatar: Container(
        child: Image.asset("assets/images/post1.jpg"),
      ),
    );
  }
}
