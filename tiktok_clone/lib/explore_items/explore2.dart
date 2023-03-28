import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/search_template.dart';

class Explore2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchTemplate(
      kheight: 235,
      kheight2: 240,
      hashtag: "Art",
      hashtag2: "Music",
      hashtag3: "Music",
      customImage: AssetImage(
        "assets/images/post4.jpg",
      ),
      custom2Image: AssetImage(
        "assets/images/post5.jpg",
      ),
      custom3Image: AssetImage(
        "assets/images/post6.jpg",
      ),
    );
  }
}
