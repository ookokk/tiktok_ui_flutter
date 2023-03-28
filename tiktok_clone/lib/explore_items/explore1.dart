import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/search_template.dart';

class Explore1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchTemplate(
      kheight: 220,
      kheight2: 220,
      hashtag: "VWisLove",
      hashtag2: "VWisLove",
      hashtag3: "VWisLove",
      customImage: AssetImage(
        "assets/images/post1.jpg",
      ),
      custom2Image: AssetImage(
        "assets/images/post2.jpg",
      ),
      custom3Image: AssetImage(
        "assets/images/post3.jpg",
      ),
    );
  }
}
