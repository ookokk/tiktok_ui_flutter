import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../posts/mypost_1.dart';
import '../posts/mypost_2.dart';
import '../posts/mypost_3.dart';

class UserHomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
