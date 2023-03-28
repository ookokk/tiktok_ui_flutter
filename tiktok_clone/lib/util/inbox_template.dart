import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/custom_text_style.dart';

class InboxTemplate extends StatelessWidget {
  final String username;
  final String followingTime;
  final String followBox;
  final userAvatar;

  InboxTemplate({
    required this.username,
    required this.followingTime,
    required this.followBox,
    required this.userAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircleAvatar(child: userAvatar),
          Container(
            child: Text(
              "@" + username,
              style: CustomTextStyle.title,
            ),
          ),
          const SizedBox(
            width: 15,
            height: 15,
          ),
          Container(
            child: Text(
              followingTime,
              style: CustomTextStyle.paragraph,
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: ElevatedButton(onPressed: null, child: Text(followBox)))
        ],
      ),
    );
  }
}
