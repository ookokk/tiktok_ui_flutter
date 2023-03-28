import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/post_template.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'zuckerberg',
        videoDescription: 'reels for days',
        numberOfLikes: '1.2M',
        numberOfComments: '232',
        numberOfShares: '122',
        userPost: Container(
          child: Center(
              child: Image.asset(
            "assets/images/post8.jpg",
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          )),
        ));
  }
}
