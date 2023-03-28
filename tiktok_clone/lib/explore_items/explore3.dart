import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/search_template.dart';

class Explore3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchTemplate(
      kheight: 250,
      kheight2: 250,
      hashtag: "City",
      hashtag2: "Wall-e",
      hashtag3: "VWisLove",
      customImage: AssetImage(
        "assets/images/post7.jpg",
      ),
      custom2Image: AssetImage(
        "assets/images/post9.jpg",
      ),
      custom3Image: AssetImage(
        "assets/images/post8.jpg",
      ),
    );
  }
}
