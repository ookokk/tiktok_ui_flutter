import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'cristiano',
      videoDescription: 'tiktok ui tutorial',
      numberOfLikes: '1.8M',
      numberOfComments: '123',
      numberOfShares: '122',
      userPost: Container(
          child: Image.asset(
        "assets/images/post1.jpg",
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      )),
    );
  }
}
