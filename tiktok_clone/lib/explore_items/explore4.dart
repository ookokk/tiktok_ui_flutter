import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/search_template.dart';

class Explore4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchTemplate(
      kheight: 260,
      kheight2: 260,
      hashtag: "Study",
      hashtag2: "Theatre",
      hashtag3: "VWisLove",
      customImage: AssetImage(
        "assets/images/post12.jpg",
      ),
      custom2Image: AssetImage(
        "assets/images/post11.jpg",
      ),
      custom3Image: AssetImage(
        "assets/images/post10.jpg",
      ),
    );
  }
}
