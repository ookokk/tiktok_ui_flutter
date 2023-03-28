import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/search_template.dart';

class Explore5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchTemplate(
      kheight: 260,
      kheight2: 260,
      hashtag: "Marvel",
      hashtag2: "Mosaic",
      hashtag3: "VWisLove",
      customImage: AssetImage(
        "assets/images/post15.jpg",
      ),
      custom2Image: AssetImage(
        "assets/images/post14.jpg",
      ),
      custom3Image: AssetImage(
        "assets/images/post13.jpg",
      ),
    );
  }
}
