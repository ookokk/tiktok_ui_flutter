import 'package:flutter/material.dart';
import 'package:tiktok_clone/explore_items/explore1.dart';

import '../explore_items/explore2.dart';
import '../explore_items/explore3.dart';
import '../explore_items/explore4.dart';
import '../explore_items/explore5.dart';

class UserSearchPage extends StatelessWidget {
  final _controller = PageController(initialPage: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Explore1(),
          Explore2(),
          Explore3(),
          Explore4(),
          Explore5(),
        ],
      ),
    );
  }
}
