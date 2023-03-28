import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/post_template.dart';

class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'randomUser',
        videoDescription: 'flutter tutorial',
        numberOfLikes: '1.2B',
        numberOfComments: '232',
        numberOfShares: '122',
        userPost: Container(
          child: Image.asset(
            "assets/images/post12.jpg",
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ));
  }
}
